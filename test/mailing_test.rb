require 'test_helper'

class MailingTest < Test::Unit::TestCase
  
  @config = nil

  def setup
    load_config
  end
  
  def test_can_send_valid_mailing
    mail = Postal::Mailing.new( :to => @config['valid_email'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :text_message => 'Test from Postal at #{Time.now.to_s}', 
                                :from => @config['from'],
                                :list => @config['list'],
                                :subject => 'postal_test.rb')
    assert mail.valid?
    assert mail.send
  end
  
  def test_can_send_mailing_after_making_valid
    mail = Postal::Mailing.new( :to => @config['valid_email'], 
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :text_message => 'Test from Postal at #{Time.now.to_s}', 
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
                                :html_message => "<p>Test from Postal at #{Time.now.to_s}</p>", 
                                :text_message => 'Test from Postal at #{Time.now.to_s}', 
                                :from => @config['from'] )
    assert !mail.valid?
    assert !mail.send
    assert_raises(Postal::CouldNotSendMailing) { mail.send! }
  end
  
end
