module Postal
  class Member < Postal::Base
    
    class << self
      
      def find_by_filter(args)
        return Postal.driver.selectMembers(args)
      end
      
      
      # Will NOT let you delete the entire list's members (only pass a ListName) Returns the number of members that were deleted, or nil if none were
      def destroy(args)
        raise Postal::WouldDeleteAllMembers, 'Not passing any parameters (other than ListName) to this method will delete ALL members of a list. If you really want to delete all members of this list, use destroy! instead.' if args.to_a.size == 1 && args.to_a.first.match(/ListName/)
        return Postal.driver.deleteMembers(args)
      end
      
      
      # WILL let you delete an entire list's members (only pass a ListName). Returns the number of members that were deleted, or nil if none were
      def destroy!(args)
        return Postal.driver.deleteMembers(args)
      end
      
      
      protected
      
        def find_by_email(args,options)
          list_name = args.last
          member_id = 0
          email = args.first
          begin
            return Postal.driver.getMemberID(Postal::Lmapi::SimpleMemberStruct.new(list_name,member_id,email))
          rescue SOAP::FaultError
            return nil
          end
        end
      
      
        def find_by_id(args,options)
          member_id = args.first
          return Postal.driver.getEmailFromMemberID(member_id)
        end
        
      
        # Find one or more members by name
        def find_some(args,options={})
          case args.first
          when ::String
            find_by_email(args,options)
          when ::Fixnum
            find_by_id(args,options)
          when nil
            find_by_struct(options)
          end
        end
      
    end
    
    DEFAULT_ATTRIBUTES = { :id => nil, :email => nil, :name => nil, :list_name => nil, :demographics => nil }
    
    attr_accessor :id, :email, :name, :list_name, :demographics
    
    # Create a new member instance
    def initialize(email,name,list_name,demographics={})
      @id = nil
      @email = email
      @name = name
      @list_name = list_name
      @demographics = demographics
    end
    
    
    # Save the member to Lyris and returns the member ID that was created. Returns `false` if the save fails.
    def save
      # if @list is a list Object then get the name out (all Lyris wants is the name)
      list_name = @list_name
      begin
        @id = Postal.driver.createSingleMember(@email, @name, list_name)
        update_attributes(@demographics) unless @demographics.empty?
        return @id
      rescue SOAP::FaultError
        return false
      end
    end
    
    
    # Saves the member to Lyris and returns the member ID that was created. Throws an error if the save fails.
    def save!
      if id = save
        return id
      else
        raise Postal::CouldNotCreateMember, 'Could not create a new member. The most likely cause is that the specified list already contains this email address.'
      end
    end
    
    
    # Update the demographics for a user
    def update_attributes(attributes={})
      list_name = @list_name
      demos = attributes.collect { |key,value| Postal::Lmapi::KeyValueType.new(value,key.to_s) }
      member = Postal::Lmapi::SimpleMemberStruct.new(list_name, @id, @email)
      return Postal.driver.updateMemberDemographics(member,demos)
    end
    
    
    # Throw an error if demographics couldn't be saved
    def update_attributes!(attributes={})
      if update_attributes(attributes)
        return true
      else
        raise Postal::CouldNotUpdateMember, 'Could not update the member. The most likely cause is that your demographics are invalid.'
      end
    end
    
  end
end
