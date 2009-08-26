module Postal
  class List < Postal::Base
    
    class << self
      
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
    
  end
end
