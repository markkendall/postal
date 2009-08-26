require 'rubygems'
gem 'soap4r'
require 'lib/postal/lmapi/lmapiDriver.rb'

driver = LmapiSoap.new

wsdl = 'http://mail.active.com:82/?wsdl'
username = 'yourproductupdates@active.com'
password = '40uR@ct!ve'

driver.options['protocol.http.basic_auth'] << [wsdl,username,password]


# Get all lists
# lists = driver.selectLists('','')
# lists.each { |list| puts list.inspect }


# Create a member
# member_id = driver.createSingleMember('rob.cameron@active.com','Rob Cameron','active-casting')
# puts member_id


# Update a member
# puts driver.updateMemberDemographics


# Send a direct mailing
email = MailingStruct.new(  :listName => 'active-casting', 
                            :subject => 'Test from Postal - Ruby/Lyris API', 
                            :htmlMessage => '<p>This is a test from the Ruby/Lyris API interface.</p>', 
                            :from => 'Active Casting <noreply@activecasting.com>' )
                            
puts driver.sendMailingDirect(['rob.cameron@active.com','christopher.hall@active.com'],[],email)

# Errors
# When trying to add a user that's already in the system:
#   SOAP::FaultError: A member already exists on list 'active-casting' with email address 'rob.cameron@active.com', ('rob.cameron@active.com'), ID '96358902'



# {http://tempuri.org/ns1.xsd}MailingStruct
#   enableRecency - SOAP::SOAPBoolean
#   isHtmlSectionEncoded - SOAP::SOAPBoolean
#   subject - SOAP::SOAPString
#   campaign - SOAP::SOAPString
#   htmlSectionEncoding - SOAP::SOAPInt
#   htmlMessage - SOAP::SOAPString
#   to - SOAP::SOAPString
#   recencyWhich - RecencyWhichEnum
#   resendAfterDays - SOAP::SOAPInt
#   sampleSize - SOAP::SOAPInt
#   charSetID - SOAP::SOAPInt
#   replyTo - SOAP::SOAPString
#   isTextSectionEncoded - SOAP::SOAPBoolean
#   textSectionEncoding - SOAP::SOAPInt
#   title - SOAP::SOAPString
#   textMessage - SOAP::SOAPString
#   trackOpens - SOAP::SOAPBoolean
#   recencyNumberOfMailings - SOAP::SOAPInt
#   recencyDays - SOAP::SOAPInt
#   bypassModeration - SOAP::SOAPBoolean
#   attachments - SOAP::SOAPString
#   dontAttemptAfterDate - SOAP::SOAPDateTime
#   rewriteDateWhenSent - SOAP::SOAPBoolean
#   from - SOAP::SOAPString
#   additionalHeaders - SOAP::SOAPString
#   listName - SOAP::SOAPString
#   detectHtml - SOAP::SOAPBoolean