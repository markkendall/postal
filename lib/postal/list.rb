module Postal
  class List
    
    class << self
      
      def find(*args)
        options = extract_options(args)
        case args.first
        when :all then  find_all(options)
        else            find_some(args,options)
        end
      end
      
      def all
        find(:all)
      end
      
      protected
     
        # Find one or more lists by name
        def find_some(names,options={})
          return Postal.driver.selectLists(names,'')
        end
    
    
        # Find all lists
        def find_all(options)
          return Postal.driver.selectLists('','')
        end
        
      private
      
        def extract_options(opts)
          opts.last.is_a?(::Hash) ? opts.pop : {}
        end
      
    end
    
    
    # Create a new list
    def initialize
      
    end
    
    
    # Make a new list and immediately save to Lyris
    def create(*args)
      instance = self.initialize(args)
      instance.save
    end
    
    
    # Save the list to Lyris
    def save
      
    end
    
  end
end
