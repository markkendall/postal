require 'test_helper'

class ListTest < Test::Unit::TestCase
  
  @config = nil

  def setup
    load_config
  end
  
  # lists
  def test_can_find_list_that_exists
    assert Postal::List.find(@config['list_name'])
  end
  
  def test_returns_nil_if_list_not_found
    assert_nil Postal::List.find('foo')
  end
  
end
