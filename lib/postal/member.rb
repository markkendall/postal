module Postal
  class Member
    
    class << self
      
      # Make a new user and immediately save to Lyris
      def create(*args)
        instance = self.new(*args)
        instance.save
      end
      
      
      # Make a new user and immediately save to Lyris, but throw an error if the save fails.
      def create!(*args)
        instance = self.new(*args)
        instance.save!
      end
  
    end
    
    
    attr_accessor :email, :name, :list
    
    # Create a new member instance
    def initialize(email,name,list)
      @email = email
      @name = name
      @list = list
    end
    
    
    # Save the member to Lyris and returns the member ID that was created. Returns `false` if the save fails.
    def save
      # if @list is a list Object then get the name out (all Lyris wants is the name)
      case @list
      when ArrayOfListStruct
        list = @list.first.listName
      else
        list = @list
      end
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
