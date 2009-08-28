module Postal
  class Base
    
    class << self
      
      # Find objects based on some options
      def find(*args)
        options = extract_options(args)
        case args.first
        when :all then  find_all(options)
        else            find_some(args,options)
        end
      end
      
      
      # Alias for find(:all)
      def all
        find(:all)
      end
      
      
      # Make a new user and immediately save to Lyris
      def create(*args)
        instance = self.new(*args)
        instance.save
        return instance
      end
      
      
      # Make a new user and immediately save to Lyris, but throw an error if the save fails.
      def create!(*args)
        instance = self.new(*args)
        instance.save!
        return instance
      end
      
      
      private
      
        def extract_options(opts)
          opts.last.is_a?(::Hash) ? opts.pop : {}
        end
        
    end
    
  end
end
