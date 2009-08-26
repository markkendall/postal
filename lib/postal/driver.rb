module Postal
  class Driver
    
    def initialize(options)
      driver = LmapiSoap.new
      driver.options['protocol.http.basic_auth'] << [options[:wsdl],options[:username],options[:password]]
      return driver
    end
    
  end
end
