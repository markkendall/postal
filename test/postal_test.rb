require 'test_helper'

class PostalTest < Test::Unit::TestCase
  
  @config = nil

  def setup
    @config = YAML.load(File.read('lyris.yml'))['config']
    Postal.options[:wsdl] = @config['wsdl']
    Postal.options[:username] = @config['username']
    Postal.options[:password] = @config['password']
  end
  
  def teardown
    Postal::Member.destroy(["ListName=#{@config['list']}",'EmailAddress like john.doe%'])
  end
  
  # lists
  def test_can_find_list_that_exists
    assert Postal::List.find(@config['list'])
  end
  
  def test_returns_nil_if_list_not_found
    assert_nil Postal::List.find('foo')
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
  
  def test_can_send_valid_mailing
    mail = Postal::Mailing.new( :to => @config['valid_email'], 
                                :html_message => "<p>Test from postal_test.rb at #{Time.now.to_s}</p>", 
                                :text_message => 'Test from postal_test.rb at #{Time.now.to_s}', 
                                :from => @config['from'],
                                :list => @config['list'],
                                :subject => 'postal_test.rb')
    assert mail.valid?
    assert mail.send
  end
  
  def test_can_send_mailing_after_making_valid
    mail = Postal::Mailing.new( :to => @config['valid_email'], 
                                :html_message => "<p>Test from postal_test.rb at #{Time.now.to_s}</p>", 
                                :text_message => 'Test from postal_test.rb at #{Time.now.to_s}', 
                                :from => @config['from'] )
    assert !mail.valid?
    mail.list = @config['list']
    assert !mail.valid?
    mail.subject = 'postal_test.rb'
    assert mail.valid?
    assert mail.send
  end
  
  def test_cannot_send_invalid_mailing
    mail = Postal::Mailing.new( :to => @config['valid_email'], 
                                :html_message => "<p>Test from postal_test.rb at #{Time.now.to_s}</p>", 
                                :text_message => 'Test from postal_test.rb at #{Time.now.to_s}', 
                                :from => @config['from'] )
    assert !mail.valid?
    assert !mail.send
    assert_raises(Postal::CouldNotSendMailing) { mail.send! }
  end
  
end
