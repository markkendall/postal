require 'rubygems'
require 'test/unit'
# require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'postal'

class Test::Unit::TestCase
  
  def load_config
    @config = YAML.load(File.read('lyris.yml'))['config']
    Postal.options[:wsdl] = @config['wsdl']
    Postal.options[:username] = @config['username']
    Postal.options[:password] = @config['password']
    Postal.options[:list_name] = @config['list_name']
  end
  
  def delete_test_members
    Postal::Member.destroy('EmailAddress like john.doe%')
  end
  
end
