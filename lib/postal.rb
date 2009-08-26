$:.unshift File.dirname(__FILE__) # for use/testing when no gem is installed

# external
require 'logger'

# internal
Dir.glob(File.expand_path('lib/postal/lmapi/*')).each { |path| require File.expand_path(path) }
require 'postal/driver'
require 'postal/base'
require 'postal/list'
require 'postal/member'

module Postal
  
  # error classes
  class CouldNotCreateMember < StandardError
  end
  
  
  VERSION = '0.1.0'
  LOGGER = Logger.new(STDOUT)
  
  DEFAULT_OPTIONS = { :debug => false }
  
  @options = {  :wsdl => nil, 
                :username => nil, 
                :password => nil }
                
  attr_accessor :options
  
  # Make a driver instance available at Postal.driver
  def driver
    driver = LmapiSoap.new
    driver.options['protocol.http.basic_auth'] << [@options[:wsdl], @options[:username], @options[:password]]
    return driver
  end
  
  # make @options available so it can be set externally when using the library
  extend self
  
end