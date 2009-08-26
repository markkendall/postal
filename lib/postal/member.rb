module Postal
  class Member < Postal::Base
    
    class << self
      
      protected
      
        def find_by_email(args,options)
          list = get_list_name(args.last)
          member_id = 0
          email = args.first
          return Postal.driver.getMemberID(SimpleMemberStruct.new(list,member_id,email))
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
          when ::Hash
            find_some(args,options)
          end
        end
        
      private
      
        def get_list_name(obj)
          case obj
          when ArrayOfListStruct
            return obj.first.listName
          else
            return obj
          end
        end
      
    end
    
    
    attr_accessor :email, :name, :list, :demographics
    
    # Create a new member instance
    def initialize(email,name,list,demographics={})
      @email = email
      @name = name
      @list = list
      @demographics = demographics
    end
    
    
    # Save the member to Lyris and returns the member ID that was created. Returns `false` if the save fails.
    def save
      # if @list is a list Object then get the name out (all Lyris wants is the name)
      list = Member.get_list_name(@list)
      begin
        return Postal.driver.createSingleMember(@email, @name, list)
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
    
  end
end
