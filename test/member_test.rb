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
  def test_can_create_member_from_list_object
    list = Postal::List.find(@config['list'])
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","John Doe",list).save
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","John Doe",list).save!
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com",'',list).save              # create member with no name
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com",'',list).save!             # create member with no name
  end
  
  def test_can_create_member_from_list_name
    assert Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","John Doe",@config['list']).save
  end
  
  def test_duplicate_member_cannot_be_saved
    new_member = Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","Original",@config['list'])
    new_member.save
    repeat_member = Postal::Member.new(new_member.email,"Duplicate",@config['list'])
    assert !repeat_member.save
    assert_raises(Postal::CouldNotCreateMember) { repeat_member.save! }
  end
  
  def test_create_user_in_one_step
    assert Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list'])
    assert Postal::Member.create!("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list'])
  end
  
  def test_can_find_member_by_id
    new_member = Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list'])
    id = new_member.save
    assert Postal::Member.find(id,@config['list'])
  end
  
  def test_can_find_member_by_email
    new_member = Postal::Member.new("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list'])
    new_member.save
    assert Postal::Member.find(new_member.email,@config['list'])
  end
  
  def test_can_find_member_by_filters
    Postal::Member.create("john.doe#{rand(1000000)}@anonymous.com","John Doe", @config['list'])
    assert Postal::Member.find_by_filter(["ListName=#{@config['list']}",'EmailAddress like john.doe%'])
  end
  
end
