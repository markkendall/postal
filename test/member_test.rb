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
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com", "John Doe", @config['list_name']).save
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com", "John Doe", @config['list_name']).save!
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com", '', @config['list_name']).save              # create member with no name
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com", '', @config['list_name']).save!             # create member with no name
  end

  def test_duplicate_member_cannot_be_saved
    new_member = Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","Original",@config['list_name'])
    new_member.save
    repeat_member = Postal::Member.new(new_member.email,"Duplicate",@config['list_name'])
    assert !repeat_member.save
    assert_raises(Postal::CouldNotCreateMember) { repeat_member.save! }
  end
  
  def test_create_user_in_one_step
    assert Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'])
    assert Postal::Member.create!("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'])
  end
  
  def test_can_update_user_demographics_after_creation
    new_member = Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'])
    assert new_member.update_attributes(:field_0 => 'Baseball')
  end
  
  def test_can_create_user_and_demographics_at_creation
    assert Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'], :field_0 => 'Baseball', :field_1 => 'Male')
  end
  
  def test_can_find_member_by_id
    new_member = Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'])
    assert Postal::Member.find(new_member.id, @config['list_name'])
  end
  
  def test_can_find_member_by_email
    new_member = Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'])
    assert Postal::Member.find(new_member.email, @config['list_name'])
  end
  
  def test_can_find_member_by_filters
    Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list_name'])
    assert Postal::Member.find_by_filter(["ListName=#{@config['list_name']}",'EmailAddress like john.doe%'])
  end
  
  def test_can_delete_member
    new_member = Postal::Member.create("john.doe-delete@anonymous.com","John Doe", @config['list_name'])
    assert Postal::Member.find(new_member.email, @config['list_name'])
    Postal::Member.destroy(["ListName=#{@config['list_name']}","EmailAddress like john.doe-delete%"])
    assert !Postal::Member.find(new_member.email, @config['list_name'])
  end

end
