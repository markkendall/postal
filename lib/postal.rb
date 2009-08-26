$:.unshift File.dirname(__FILE__) # for use/testing when no gem is installed

# external
require 'logger'


# internal
require 'lmapi/lmapiDriver.rb'
require 'engine.rb'

module Postal
  
  VERSION = '0.1.0'
  LOGGER = Logger.new(STDOUT)
  
  DEFAULT_OPTIONS = { :debug => false }
  
  @options = {  :endpoint => nil, 
                :username => nil, 
                :password => nil }
                
  attr_accessor :options
  
  # make @options available so it can be set externally when using the library
  extend self
  
end