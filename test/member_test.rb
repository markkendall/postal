require 'test_helper'

class MemberTest < Test::Unit::TestCase
  
  @config = nil

  def setup
    load_config
  end
  
  def teardown
    delete_test_members
  end
  
  # members
  def test_can_create_member
    assert Postal::Member.new(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe").save
    assert Postal::Member.new(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe").save!
    assert Postal::Member.new(:email => "john.doe#{rand(1000000)}@anonymous.com").save              # create member with no name
    assert Postal::Member.new(:email => "john.doe#{rand(1000000)}@anonymous.com").save!             # create member with no name
  end
  
  def test_can_create_member_with_explicit_list
    assert Postal::Member.new(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe", :list_name => @config['list_name']).save
  end

  def test_duplicate_member_cannot_be_saved
    new_member = Postal::Member.new(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "Original")
    new_member.save
    repeat_member = Postal::Member.new(:email => new_member.email, :name => "Duplicate")
    assert !repeat_member.save
    assert_raises(Postal::CouldNotCreateMember) { repeat_member.save! }
  end
  
  def test_create_user_in_one_step
    assert Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
    assert Postal::Member.create!(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
  end
  
  def test_can_update_user_demographics_after_creation
    new_member = Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
    assert new_member.update_attributes(:field_0 => 'Baseball')
  end
  
  def test_can_create_user_and_demographics_at_creation
    assert Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe", :field_0 => 'Baseball', :field_1 => 'Male')
  end
  
  def test_can_find_member_by_id
    new_member = Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
    assert Postal::Member.find(new_member.id)
    assert Postal::Member.find(new_member.id, @config['list_name'])   # with explicit list_name
  end
  
  def test_can_find_member_by_email
    new_member = Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
    assert Postal::Member.find(new_member.email)
    assert Postal::Member.find(new_member.email, @config['list_name'])    # with explicit list_name
  end
  
  def test_can_find_member_by_filters
    Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
    Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe 2")
    assert members = Postal::Member.find_by_filter('EmailAddress like john.doe%')
    assert_equal members.size, 2
    assert Postal::Member.find_by_filter("ListName=#{@config['list_name']}",'EmailAddress like john.doe%')  # with explicit list_name
  end
  
  def test_can_delete_member
    new_member = Postal::Member.create(:email => "john.doe-delete@anonymous.com", :name => "John Doe")
    assert Postal::Member.find(new_member.email)
    Postal::Member.destroy("EmailAddress like john.doe-delete%")
    assert !Postal::Member.find(new_member.email)
    
    # explicit list_name
    new_member = Postal::Member.create(:email => "john.doe-delete@anonymous.com", :name => "John Doe")
    assert Postal::Member.find(new_member.email)
    Postal::Member.destroy("ListName=#{@config['list_name']}","EmailAddress like john.doe-delete%")
    assert !Postal::Member.find(new_member.email)
  end
  
  def test_can_create_find_and_update_member
    Postal::Member.create(:email => "john.doe#{rand(1000000)}@anonymous.com", :name => "John Doe")
    assert member = Postal::Member.find_by_filter('EmailAddress like john.doe%')
    assert member.update_attributes(:field_0 => 'Baseball')
    assert_equal Postal::Member.find_by_filter('EmailAddress like john.doe%').demographics[:field_0], 'Baseball'
  end
  
end
