require 'test_helper'

class MailingTest < Test::Unit::TestCase
  
  @config = nil

  def setup
    load_config
  end
  
  def test_can_send_valid_mailing
    mail = Postal::Mailing.new( :to => @config['email_in_list'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :text_message => 'Test test from Postal at #{Time.now.to_s}', 
                                :from => @config['from'],
                                :subject => 'postal_test.rb')
    assert mail.valid?
    assert mail.send
    
    # with explicit list_name
    mail = Postal::Mailing.new( :to => @config['email_in_list'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :text_message => 'Test test from Postal at #{Time.now.to_s}', 
                                :from => @config['from'],
                                :list_name => @config['list_name'],
                                :subject => 'postal_test.rb')
    assert mail.valid?
    assert mail.send
  end
  
  def test_can_send_email_to_address_not_in_list
    mail = Postal::Mailing.new( :to => @config['email_not_in_list'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :text_message => 'Text test from Postal at #{Time.now.to_s}', 
                                :from => @config['from'],
                                :subject => 'postal_test.rb')
    assert mail.send
  end
  
  def test_can_send_mailing_after_making_valid
    mail = Postal::Mailing.new( :to => @config['email_in_list'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :from => @config['from'] )
    assert !mail.valid?
    mail.list_name = @config['list_name']
    assert !mail.valid?
    mail.subject = 'postal_test.rb'
    assert mail.valid?
  end
  
  def test_cannot_send_invalid_mailing
    mail = Postal::Mailing.new( :to => @config['valid_email'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :from => @config['from'] )
    assert !mail.valid?
    assert !mail.send
    assert_raises(Postal::CouldNotSendMailing) { mail.send! }
  end
  
end
