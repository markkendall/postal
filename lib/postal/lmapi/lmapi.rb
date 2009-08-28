# All the data structures for Lyris

require 'xsd/qname'

module Postal
  module Lmapi
    # {http://tempuri.org/ns1.xsd}SimpleMailingStruct
    #   subject - SOAP::SOAPString
    #   isHtmlSectionEncoded - SOAP::SOAPBoolean
    #   htmlSectionEncoding - SOAP::SOAPInt
    #   htmlMessage - SOAP::SOAPString
    #   to - SOAP::SOAPString
    #   charSetID - SOAP::SOAPInt
    #   isTextSectionEncoded - SOAP::SOAPBoolean
    #   textSectionEncoding - SOAP::SOAPInt
    #   title - SOAP::SOAPString
    #   textMessage - SOAP::SOAPString
    #   attachments - SOAP::SOAPString
    #   from - SOAP::SOAPString
    #   additionalHeaders - SOAP::SOAPString
    class SimpleMailingStruct
      attr_accessor :subject
      attr_accessor :isHtmlSectionEncoded
      attr_accessor :htmlSectionEncoding
      attr_accessor :htmlMessage
      attr_accessor :to
      attr_accessor :charSetID
      attr_accessor :isTextSectionEncoded
      attr_accessor :textSectionEncoding
      attr_accessor :title
      attr_accessor :textMessage
      attr_accessor :attachments
      attr_accessor :from
      attr_accessor :additionalHeaders

      def initialize(subject = nil, isHtmlSectionEncoded = nil, htmlSectionEncoding = nil, htmlMessage = nil, to = nil, charSetID = nil, isTextSectionEncoded = nil, textSectionEncoding = nil, title = nil, textMessage = nil, attachments = nil, from = nil, additionalHeaders = nil)
        @subject = subject
        @isHtmlSectionEncoded = isHtmlSectionEncoded
        @htmlSectionEncoding = htmlSectionEncoding
        @htmlMessage = htmlMessage
        @to = to
        @charSetID = charSetID
        @isTextSectionEncoded = isTextSectionEncoded
        @textSectionEncoding = textSectionEncoding
        @title = title
        @textMessage = textMessage
        @attachments = attachments
        @from = from
        @additionalHeaders = additionalHeaders
      end
    end

    # {http://tempuri.org/ns1.xsd}MessageStruct
    #   recipientEmailsIn - ArrayOfstring
    #   recipientMemberIDsIn - ArrayOfint
    #   headersIn - ArrayOfKeyValueType
    #   body - SOAP::SOAPString
    #   segmentID - SOAP::SOAPInt
    #   listName - SOAP::SOAPString
    class MessageStruct
      attr_accessor :recipientEmailsIn
      attr_accessor :recipientMemberIDsIn
      attr_accessor :headersIn
      attr_accessor :body
      attr_accessor :segmentID
      attr_accessor :listName

      def initialize(recipientEmailsIn = nil, recipientMemberIDsIn = nil, headersIn = nil, body = nil, segmentID = nil, listName = nil)
        @recipientEmailsIn = recipientEmailsIn
        @recipientMemberIDsIn = recipientMemberIDsIn
        @headersIn = headersIn
        @body = body
        @segmentID = segmentID
        @listName = listName
      end
    end

    # {http://tempuri.org/ns1.xsd}DocPart
    #   body - SOAP::SOAPString
    #   mimePartName - SOAP::SOAPString
    #   charSetID - SOAP::SOAPInt
    #   encoding - MailSectionEncodingEnum
    class DocPart
      attr_accessor :body
      attr_accessor :mimePartName
      attr_accessor :charSetID
      attr_accessor :encoding

      def initialize(body = nil, mimePartName = nil, charSetID = nil, encoding = nil)
        @body = body
        @mimePartName = mimePartName
        @charSetID = charSetID
        @encoding = encoding
      end
    end

    # {http://tempuri.org/ns1.xsd}ContentStruct
    #   headerTo - SOAP::SOAPString
    #   isTemplate - SOAP::SOAPBoolean
    #   docType - DocTypeEnum
    #   contentID - SOAP::SOAPInt
    #   description - SOAP::SOAPString
    #   nativeTitle - SOAP::SOAPString
    #   headerFrom - SOAP::SOAPString
    #   title - SOAP::SOAPString
    #   listName - SOAP::SOAPString
    #   siteName - SOAP::SOAPString
    #   isReadOnly - SOAP::SOAPBoolean
    #   dateCreated - SOAP::SOAPDateTime
    #   docParts - ArrayOfDocPart
    class ContentStruct
      attr_accessor :headerTo
      attr_accessor :isTemplate
      attr_accessor :docType
      attr_accessor :contentID
      attr_accessor :description
      attr_accessor :nativeTitle
      attr_accessor :headerFrom
      attr_accessor :title
      attr_accessor :listName
      attr_accessor :siteName
      attr_accessor :isReadOnly
      attr_accessor :dateCreated
      attr_accessor :docParts

      def initialize(headerTo = nil, isTemplate = nil, docType = nil, contentID = nil, description = nil, nativeTitle = nil, headerFrom = nil, title = nil, listName = nil, siteName = nil, isReadOnly = nil, dateCreated = nil, docParts = nil)
        @headerTo = headerTo
        @isTemplate = isTemplate
        @docType = docType
        @contentID = contentID
        @description = description
        @nativeTitle = nativeTitle
        @headerFrom = headerFrom
        @title = title
        @listName = listName
        @siteName = siteName
        @isReadOnly = isReadOnly
        @dateCreated = dateCreated
        @docParts = docParts
      end
    end

    # {http://tempuri.org/ns1.xsd}UrlTrackingStruct
    #   uniqueOpens - SOAP::SOAPString
    #   opens - SOAP::SOAPString
    #   url - SOAP::SOAPString
    class UrlTrackingStruct
      attr_accessor :uniqueOpens
      attr_accessor :opens
      attr_accessor :url

      def initialize(uniqueOpens = nil, opens = nil, url = nil)
        @uniqueOpens = uniqueOpens
        @opens = opens
        @url = url
      end
    end

    # {http://tempuri.org/ns1.xsd}MemberStruct
    #   additional - SOAP::SOAPString
    #   membershipKind - MemberKindEnum
    #   approvalNeeded - SOAP::SOAPBoolean
    #   password - SOAP::SOAPString
    #   notifyError - SOAP::SOAPBoolean
    #   expireDate - SOAP::SOAPDateTime
    #   comment - SOAP::SOAPString
    #   userID - SOAP::SOAPString
    #   readsHtml - SOAP::SOAPBoolean
    #   receiveAdminEmail - SOAP::SOAPBoolean
    #   mailFormat - MailFormatEnum
    #   dateConfirm - SOAP::SOAPDateTime
    #   numberOfBounces - SOAP::SOAPInt
    #   numApprovalsNeeded - SOAP::SOAPInt
    #   notifySubmission - SOAP::SOAPBoolean
    #   noRepro - SOAP::SOAPBoolean
    #   memberID - SOAP::SOAPInt
    #   demographics - ArrayOfKeyValueType
    #   emailAddress - SOAP::SOAPString
    #   dateJoined - SOAP::SOAPDateTime
    #   isListAdmin - SOAP::SOAPBoolean
    #   receiveAcknowlegment - SOAP::SOAPBoolean
    #   dateBounce - SOAP::SOAPDateTime
    #   dateHeld - SOAP::SOAPDateTime
    #   memberStatus - MemberStatusEnum
    #   fullName - SOAP::SOAPString
    #   canApprovePending - SOAP::SOAPBoolean
    #   cleanAuto - SOAP::SOAPBoolean
    #   listName - SOAP::SOAPString
    #   dateUnsubscribed - SOAP::SOAPDateTime
    class MemberStruct
      attr_accessor :additional
      attr_accessor :membershipKind
      attr_accessor :approvalNeeded
      attr_accessor :password
      attr_accessor :notifyError
      attr_accessor :expireDate
      attr_accessor :comment
      attr_accessor :userID
      attr_accessor :readsHtml
      attr_accessor :receiveAdminEmail
      attr_accessor :mailFormat
      attr_accessor :dateConfirm
      attr_accessor :numberOfBounces
      attr_accessor :numApprovalsNeeded
      attr_accessor :notifySubmission
      attr_accessor :noRepro
      attr_accessor :memberID
      attr_accessor :demographics
      attr_accessor :emailAddress
      attr_accessor :dateJoined
      attr_accessor :isListAdmin
      attr_accessor :receiveAcknowlegment
      attr_accessor :dateBounce
      attr_accessor :dateHeld
      attr_accessor :memberStatus
      attr_accessor :fullName
      attr_accessor :canApprovePending
      attr_accessor :cleanAuto
      attr_accessor :listName
      attr_accessor :dateUnsubscribed

      def initialize(additional = nil, membershipKind = nil, approvalNeeded = nil, password = nil, notifyError = nil, expireDate = nil, comment = nil, userID = nil, readsHtml = nil, receiveAdminEmail = nil, mailFormat = nil, dateConfirm = nil, numberOfBounces = nil, numApprovalsNeeded = nil, notifySubmission = nil, noRepro = nil, memberID = nil, demographics = nil, emailAddress = nil, dateJoined = nil, isListAdmin = nil, receiveAcknowlegment = nil, dateBounce = nil, dateHeld = nil, memberStatus = nil, fullName = nil, canApprovePending = nil, cleanAuto = nil, listName = nil, dateUnsubscribed = nil)
        @additional = additional
        @membershipKind = membershipKind
        @approvalNeeded = approvalNeeded
        @password = password
        @notifyError = notifyError
        @expireDate = expireDate
        @comment = comment
        @userID = userID
        @readsHtml = readsHtml
        @receiveAdminEmail = receiveAdminEmail
        @mailFormat = mailFormat
        @dateConfirm = dateConfirm
        @numberOfBounces = numberOfBounces
        @numApprovalsNeeded = numApprovalsNeeded
        @notifySubmission = notifySubmission
        @noRepro = noRepro
        @memberID = memberID
        @demographics = demographics
        @emailAddress = emailAddress
        @dateJoined = dateJoined
        @isListAdmin = isListAdmin
        @receiveAcknowlegment = receiveAcknowlegment
        @dateBounce = dateBounce
        @dateHeld = dateHeld
        @memberStatus = memberStatus
        @fullName = fullName
        @canApprovePending = canApprovePending
        @cleanAuto = cleanAuto
        @listName = listName
        @dateUnsubscribed = dateUnsubscribed
      end
    end

    # {http://tempuri.org/ns1.xsd}CharSetStruct
    #   description - SOAP::SOAPString
    #   name - SOAP::SOAPString
    #   charSetID - SOAP::SOAPInt
    class CharSetStruct
      attr_accessor :description
      attr_accessor :name
      attr_accessor :charSetID

      def initialize(description = nil, name = nil, charSetID = nil)
        @description = description
        @name = name
        @charSetID = charSetID
      end
    end

    # {http://tempuri.org/ns1.xsd}TinyMemberStruct
    #   fullName - SOAP::SOAPString
    #   emailAddress - SOAP::SOAPString
    class TinyMemberStruct
      attr_accessor :fullName
      attr_accessor :emailAddress

      def initialize(fullName = nil, emailAddress = nil)
        @fullName = fullName
        @emailAddress = emailAddress
      end
    end

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
    class MailingStruct
  
      attr_accessor :enableRecency
      attr_accessor :isHtmlSectionEncoded
      attr_accessor :subject
      attr_accessor :campaign
      attr_accessor :htmlSectionEncoding
      attr_accessor :htmlMessage
      attr_accessor :to
      attr_accessor :recencyWhich
      attr_accessor :resendAfterDays
      attr_accessor :sampleSize
      attr_accessor :charSetID
      attr_accessor :replyTo
      attr_accessor :isTextSectionEncoded
      attr_accessor :textSectionEncoding
      attr_accessor :title
      attr_accessor :textMessage
      attr_accessor :trackOpens
      attr_accessor :recencyNumberOfMailings
      attr_accessor :recencyDays
      attr_accessor :bypassModeration
      attr_accessor :attachments
      attr_accessor :dontAttemptAfterDate
      attr_accessor :rewriteDateWhenSent
      attr_accessor :from
      attr_accessor :additionalHeaders
      attr_accessor :listName
      attr_accessor :detectHtml
  
      DEFAULT_ATTRIBUTES = {:enableRecency => nil, 
                            :isHtmlSectionEncoded => nil, 
                            :subject => nil, 
                            :campaign => nil, 
                            :htmlSectionEncoding => nil, 
                            :htmlMessage => nil, 
                            :to => nil, 
                            :recencyWhich => nil, 
                            :resendAfterDays => nil, 
                            :sampleSize => nil, 
                            :charSetID => nil, 
                            :replyTo => nil, 
                            :isTextSectionEncoded => nil, 
                            :textSectionEncoding => nil, 
                            :title => nil, 
                            :textMessage => nil, 
                            :trackOpens => nil, 
                            :recencyNumberOfMailings => nil, 
                            :recencyDays => nil, 
                            :bypassModeration => nil, 
                            :attachments => nil, 
                            :dontAttemptAfterDate => nil, 
                            :rewriteDateWhenSent => nil, 
                            :from => nil, 
                            :additionalHeaders => nil, 
                            :listName => nil, 
                            :detectHtml => nil}

      def initialize(attributes={})
        @enableRecency = attributes[:enableRecency]
        @isHtmlSectionEncoded = attributes[:isHtmlSectionEncoded]
        @subject = attributes[:subject]
        @campaign = attributes[:campaign]
        @htmlSectionEncoding = attributes[:htmlSectionEncoding]
        @htmlMessage = attributes[:htmlMessage]
        @to = attributes[:to]
        @recencyWhich = attributes[:recencyWhich]
        @resendAfterDays = attributes[:resendAfterDays]
        @sampleSize = attributes[:sampleSize]
        @charSetID = attributes[:charSetID]
        @replyTo = attributes[:replyTo]
        @isTextSectionEncoded = attributes[:isTextSectionEncoded]
        @textSectionEncoding = attributes[:textSectionEncoding]
        @title = attributes[:title]
        @textMessage = attributes[:textMessage]
        @trackOpens = attributes[:trackOpens]
        @recencyNumberOfMailings = attributes[:recencyNumberOfMailings]
        @recencyDays = attributes[:recencyDays]
        @bypassModeration = attributes[:bypassModeration]
        @attachments = attributes[:attachments]
        @dontAttemptAfterDate = attributes[:dontAttemptAfterDate]
        @rewriteDateWhenSent = attributes[:rewriteDateWhenSent]
        @from = attributes[:from]
        @additionalHeaders = attributes[:additionalHeaders]
        @listName = attributes[:listName]
        @detectHtml = attributes[:detectHtml]
      end
    end

    # {http://tempuri.org/ns1.xsd}SegmentStruct
    #   segmentID - SOAP::SOAPInt
    #   segmentName - SOAP::SOAPString
    #   description - SOAP::SOAPString
    #   segmentType - SegmentTypeEnum
    #   listName - SOAP::SOAPString
    #   numTestRecords - SOAP::SOAPInt
    #   clauseAdd - SOAP::SOAPString
    #   clauseWhere - SOAP::SOAPString
    #   clauseAfterSelect - SOAP::SOAPString
    #   clauseFrom - SOAP::SOAPString
    #   clauseOrderBy - SOAP::SOAPString
    #   clauseSelect - SOAP::SOAPString
    #   addWhereList - SOAP::SOAPBoolean
    #   addWhereMemberType - SOAP::SOAPBoolean
    #   addWhereSubType - SOAP::SOAPBoolean
    class SegmentStruct
      attr_accessor :segmentID
      attr_accessor :segmentName
      attr_accessor :description
      attr_accessor :segmentType
      attr_accessor :listName
      attr_accessor :numTestRecords
      attr_accessor :clauseAdd
      attr_accessor :clauseWhere
      attr_accessor :clauseAfterSelect
      attr_accessor :clauseFrom
      attr_accessor :clauseOrderBy
      attr_accessor :clauseSelect
      attr_accessor :addWhereList
      attr_accessor :addWhereMemberType
      attr_accessor :addWhereSubType

      def initialize(segmentID = nil, segmentName = nil, description = nil, segmentType = nil, listName = nil, numTestRecords = nil, clauseAdd = nil, clauseWhere = nil, clauseAfterSelect = nil, clauseFrom = nil, clauseOrderBy = nil, clauseSelect = nil, addWhereList = nil, addWhereMemberType = nil, addWhereSubType = nil)
        @segmentID = segmentID
        @segmentName = segmentName
        @description = description
        @segmentType = segmentType
        @listName = listName
        @numTestRecords = numTestRecords
        @clauseAdd = clauseAdd
        @clauseWhere = clauseWhere
        @clauseAfterSelect = clauseAfterSelect
        @clauseFrom = clauseFrom
        @clauseOrderBy = clauseOrderBy
        @clauseSelect = clauseSelect
        @addWhereList = addWhereList
        @addWhereMemberType = addWhereMemberType
        @addWhereSubType = addWhereSubType
      end
    end

    # {http://tempuri.org/ns1.xsd}TrackingSummaryStruct
    #   transientFailure - SOAP::SOAPInt
    #   success - SOAP::SOAPInt
    #   expired - SOAP::SOAPInt
    #   paused - SOAP::SOAPInt
    #   mailMergeSkipped - SOAP::SOAPInt
    #   active - SOAP::SOAPInt
    #   opens - SOAP::SOAPInt
    #   created - SOAP::SOAPDateTime
    #   notAttempted - SOAP::SOAPInt
    #   clickthroughs - SOAP::SOAPInt
    #   title - SOAP::SOAPString
    #   totalRecipients - SOAP::SOAPInt
    #   permanentFailure - SOAP::SOAPInt
    #   totalUndelivered - SOAP::SOAPInt
    #   mailMergeAbort - SOAP::SOAPInt
    #   uniqueOpens - SOAP::SOAPInt
    #   clickstreams - SOAP::SOAPInt
    #   pending - SOAP::SOAPInt
    #   urls - ArrayOfUrlTrackingStruct
    #   mailingID - SOAP::SOAPInt
    #   m_retry - SOAP::SOAPInt
    class TrackingSummaryStruct
      attr_accessor :transientFailure
      attr_accessor :success
      attr_accessor :expired
      attr_accessor :paused
      attr_accessor :mailMergeSkipped
      attr_accessor :active
      attr_accessor :opens
      attr_accessor :created
      attr_accessor :notAttempted
      attr_accessor :clickthroughs
      attr_accessor :title
      attr_accessor :totalRecipients
      attr_accessor :permanentFailure
      attr_accessor :totalUndelivered
      attr_accessor :mailMergeAbort
      attr_accessor :uniqueOpens
      attr_accessor :clickstreams
      attr_accessor :pending
      attr_accessor :urls
      attr_accessor :mailingID

      def m_retry
        @v_retry
      end

      def m_retry=(value)
        @v_retry = value
      end

      def initialize(transientFailure = nil, success = nil, expired = nil, paused = nil, mailMergeSkipped = nil, active = nil, opens = nil, created = nil, notAttempted = nil, clickthroughs = nil, title = nil, totalRecipients = nil, permanentFailure = nil, totalUndelivered = nil, mailMergeAbort = nil, uniqueOpens = nil, clickstreams = nil, pending = nil, urls = nil, mailingID = nil, v_retry = nil)
        @transientFailure = transientFailure
        @success = success
        @expired = expired
        @paused = paused
        @mailMergeSkipped = mailMergeSkipped
        @active = active
        @opens = opens
        @created = created
        @notAttempted = notAttempted
        @clickthroughs = clickthroughs
        @title = title
        @totalRecipients = totalRecipients
        @permanentFailure = permanentFailure
        @totalUndelivered = totalUndelivered
        @mailMergeAbort = mailMergeAbort
        @uniqueOpens = uniqueOpens
        @clickstreams = clickstreams
        @pending = pending
        @urls = urls
        @mailingID = mailingID
        @v_retry = v_retry
      end
    end

    # {http://tempuri.org/ns1.xsd}SimpleMemberStruct
    #   listName - SOAP::SOAPString
    #   memberID - SOAP::SOAPInt
    #   emailAddress - SOAP::SOAPString
    class SimpleMemberStruct
      attr_accessor :listName
      attr_accessor :memberID
      attr_accessor :emailAddress

      def initialize(listName = nil, memberID = nil, emailAddress = nil)
        @listName = listName
        @memberID = memberID
        @emailAddress = emailAddress
      end
    end

    # {http://tempuri.org/ns1.xsd}KeyValueType
    #   value - SOAP::SOAPString
    #   name - SOAP::SOAPString
    class KeyValueType
      attr_accessor :value
      attr_accessor :name

      def initialize(value = nil, name = nil)
        @value = value
        @name = name
      end
    end

    # {http://tempuri.org/ns1.xsd}ListStruct
    #   sMTPHeaders - SOAP::SOAPString
    #   errHold - SOAP::SOAPInt
    #   admin - SOAP::SOAPString
    #   maxMembers - SOAP::SOAPInt
    #   referralsPerDay - SOAP::SOAPInt
    #   detectOpenByDefault - SOAP::SOAPBoolean
    #   subscribePassword - SOAP::SOAPString
    #   messageHeader - SOAP::SOAPString
    #   tclMergeInit - SOAP::SOAPString
    #   replyTo - SOAP::SOAPString
    #   modifyHeaderDate - SOAP::SOAPBoolean
    #   sponsOrgID - SOAP::SOAPString
    #   defaultTo - SOAP::SOAPString
    #   runProgAfterSub - SOAP::SOAPString
    #   noListHeader - SOAP::SOAPBoolean
    #   archiveNum - SOAP::SOAPInt
    #   confirmSubscribes - SOAP::SOAPBoolean
    #   allowInfo - SOAP::SOAPBoolean
    #   simpleSub - SOAP::SOAPBoolean
    #   memberListSecurity - MemberListSecurityEnum
    #   runProgAfterUnsub - SOAP::SOAPString
    #   runProgBeforePosting - SOAP::SOAPString
    #   passwordRequired - PasswordRequiredEnum
    #   onlyAllowAdminSend - SOAP::SOAPBoolean
    #   noEmail - SOAP::SOAPBoolean
    #   approveNum - SOAP::SOAPInt
    #   recencySequentialEnabled - SOAP::SOAPBoolean
    #   headerRemove - SOAP::SOAPString
    #   recencyTriggeredEnabled - SOAP::SOAPBoolean
    #   purgeExpiredInterval - SOAP::SOAPInt
    #   runProgBeforeSub - SOAP::SOAPString
    #   nameRequired - NameRequiredEnum
    #   descLongDocID - SOAP::SOAPString
    #   comment - SOAP::SOAPString
    #   commentsID - SOAP::SOAPString
    #   purgeHeldInterval - SOAP::SOAPInt
    #   purgeUnsubInterval - SOAP::SOAPInt
    #   dateCreated - SOAP::SOAPDateTime
    #   autoReleaseHour - SOAP::SOAPInt
    #   disabled - SOAP::SOAPBoolean
    #   digestHeader - SOAP::SOAPString
    #   recencyWebEnabled - SOAP::SOAPBoolean
    #   dontRewriteMessageIDHeader - SOAP::SOAPBoolean
    #   addHeadersAndFooters - AddHeadersAndFootersEnum
    #   visitors - SOAP::SOAPBoolean
    #   noSearch - SOAP::SOAPBoolean
    #   subscriptionReports - ArrayOfstring
    #   noNNTP - SOAP::SOAPBoolean
    #   maxMessageSize - SOAP::SOAPInt
    #   purgeReferredInterval - SOAP::SOAPInt
    #   makePostsAnonymous - SOAP::SOAPBoolean
    #   keywords - SOAP::SOAPString
    #   additional - SOAP::SOAPString
    #   addListNameToSubject - SOAP::SOAPBoolean
    #   recipientLoggingLevel - LoggingLevelEnum
    #   enableScripting - EnableScriptingEnum
    #   to - SOAP::SOAPString
    #   topic - SOAP::SOAPString
    #   runProgAfterPosting - SOAP::SOAPString
    #   cleanNotif - SOAP::SOAPInt
    #   deliveryReports - ArrayOfstring
    #   recencyMailCount - SOAP::SOAPInt
    #   runProgBeforeUnsub - SOAP::SOAPString
    #   moderated - ModeratedEnum
    #   allowCrossPosting - SOAP::SOAPBoolean
    #   maxPostsPerUser - SOAP::SOAPInt
    #   confirmUnsubscribes - ConfirmUnsubEnum
    #   noArchive - SOAP::SOAPBoolean
    #   recencyDayCount - SOAP::SOAPInt
    #   purgeUnconfirmedInterval - SOAP::SOAPInt
    #   removeDuplicateCrossPostings - SOAP::SOAPBoolean
    #   archiveDays - SOAP::SOAPInt
    #   notifyHeldInterval - SOAP::SOAPInt
    #   trackAllUrls - SOAP::SOAPBoolean
    #   purgeUnapprovedInterval - SOAP::SOAPInt
    #   messageFooter - SOAP::SOAPString
    #   recencyOperator - RecencyOperatorEnum
    #   listName - SOAP::SOAPString
    #   maxQuoting - SOAP::SOAPInt
    #   defaultSubject - SOAP::SOAPString
    #   releasePending - SOAP::SOAPInt
    #   keepOutmailPostings - SOAP::SOAPInt
    #   privApprov - SOAP::SOAPString
    #   postPassword - PostPasswordEnum
    #   defaultFrom - SOAP::SOAPString
    #   anyoneCanPost - SOAP::SOAPBoolean
    #   scriptingLevel - ScriptingLevelEnum
    #   child - SOAP::SOAPBoolean
    #   shortDescription - SOAP::SOAPString
    #   noEmailSubscriptions - SOAP::SOAPBoolean
    #   detectHtmlByDefault - SOAP::SOAPBoolean
    #   sMTPFrom - SOAP::SOAPString
    #   mriVisibility - MriVisibilityEnum
    #   listID - SOAP::SOAPInt
    #   blankSubjectOk - SOAP::SOAPBoolean
    #   allowDuplicatePosts - SOAP::SOAPBoolean
    #   recencyEmailEnabled - SOAP::SOAPBoolean
    #   mergeCapOverride - ScriptingLevelEnum
    #   cleanAuto - SOAP::SOAPBoolean
    #   from - SOAP::SOAPString
    #   noBodyOk - SOAP::SOAPBoolean
    #   newSubscriberSecurity - NewSubscriberPolicyEnum
    #   maxMessNum - SOAP::SOAPInt
    #   digestFooter - SOAP::SOAPString
    class ListStruct
      attr_accessor :sMTPHeaders
      attr_accessor :errHold
      attr_accessor :admin
      attr_accessor :maxMembers
      attr_accessor :referralsPerDay
      attr_accessor :detectOpenByDefault
      attr_accessor :subscribePassword
      attr_accessor :messageHeader
      attr_accessor :tclMergeInit
      attr_accessor :replyTo
      attr_accessor :modifyHeaderDate
      attr_accessor :sponsOrgID
      attr_accessor :defaultTo
      attr_accessor :runProgAfterSub
      attr_accessor :noListHeader
      attr_accessor :archiveNum
      attr_accessor :confirmSubscribes
      attr_accessor :allowInfo
      attr_accessor :simpleSub
      attr_accessor :memberListSecurity
      attr_accessor :runProgAfterUnsub
      attr_accessor :runProgBeforePosting
      attr_accessor :passwordRequired
      attr_accessor :onlyAllowAdminSend
      attr_accessor :noEmail
      attr_accessor :approveNum
      attr_accessor :recencySequentialEnabled
      attr_accessor :headerRemove
      attr_accessor :recencyTriggeredEnabled
      attr_accessor :purgeExpiredInterval
      attr_accessor :runProgBeforeSub
      attr_accessor :nameRequired
      attr_accessor :descLongDocID
      attr_accessor :comment
      attr_accessor :commentsID
      attr_accessor :purgeHeldInterval
      attr_accessor :purgeUnsubInterval
      attr_accessor :dateCreated
      attr_accessor :autoReleaseHour
      attr_accessor :disabled
      attr_accessor :digestHeader
      attr_accessor :recencyWebEnabled
      attr_accessor :dontRewriteMessageIDHeader
      attr_accessor :addHeadersAndFooters
      attr_accessor :visitors
      attr_accessor :noSearch
      attr_accessor :subscriptionReports
      attr_accessor :noNNTP
      attr_accessor :maxMessageSize
      attr_accessor :purgeReferredInterval
      attr_accessor :makePostsAnonymous
      attr_accessor :keywords
      attr_accessor :additional
      attr_accessor :addListNameToSubject
      attr_accessor :recipientLoggingLevel
      attr_accessor :enableScripting
      attr_accessor :to
      attr_accessor :topic
      attr_accessor :runProgAfterPosting
      attr_accessor :cleanNotif
      attr_accessor :deliveryReports
      attr_accessor :recencyMailCount
      attr_accessor :runProgBeforeUnsub
      attr_accessor :moderated
      attr_accessor :allowCrossPosting
      attr_accessor :maxPostsPerUser
      attr_accessor :confirmUnsubscribes
      attr_accessor :noArchive
      attr_accessor :recencyDayCount
      attr_accessor :purgeUnconfirmedInterval
      attr_accessor :removeDuplicateCrossPostings
      attr_accessor :archiveDays
      attr_accessor :notifyHeldInterval
      attr_accessor :trackAllUrls
      attr_accessor :purgeUnapprovedInterval
      attr_accessor :messageFooter
      attr_accessor :recencyOperator
      attr_accessor :listName
      attr_accessor :maxQuoting
      attr_accessor :defaultSubject
      attr_accessor :releasePending
      attr_accessor :keepOutmailPostings
      attr_accessor :privApprov
      attr_accessor :postPassword
      attr_accessor :defaultFrom
      attr_accessor :anyoneCanPost
      attr_accessor :scriptingLevel
      attr_accessor :child
      attr_accessor :shortDescription
      attr_accessor :noEmailSubscriptions
      attr_accessor :detectHtmlByDefault
      attr_accessor :sMTPFrom
      attr_accessor :mriVisibility
      attr_accessor :listID
      attr_accessor :blankSubjectOk
      attr_accessor :allowDuplicatePosts
      attr_accessor :recencyEmailEnabled
      attr_accessor :mergeCapOverride
      attr_accessor :cleanAuto
      attr_accessor :from
      attr_accessor :noBodyOk
      attr_accessor :newSubscriberSecurity
      attr_accessor :maxMessNum
      attr_accessor :digestFooter

      def initialize(sMTPHeaders = nil, errHold = nil, admin = nil, maxMembers = nil, referralsPerDay = nil, detectOpenByDefault = nil, subscribePassword = nil, messageHeader = nil, tclMergeInit = nil, replyTo = nil, modifyHeaderDate = nil, sponsOrgID = nil, defaultTo = nil, runProgAfterSub = nil, noListHeader = nil, archiveNum = nil, confirmSubscribes = nil, allowInfo = nil, simpleSub = nil, memberListSecurity = nil, runProgAfterUnsub = nil, runProgBeforePosting = nil, passwordRequired = nil, onlyAllowAdminSend = nil, noEmail = nil, approveNum = nil, recencySequentialEnabled = nil, headerRemove = nil, recencyTriggeredEnabled = nil, purgeExpiredInterval = nil, runProgBeforeSub = nil, nameRequired = nil, descLongDocID = nil, comment = nil, commentsID = nil, purgeHeldInterval = nil, purgeUnsubInterval = nil, dateCreated = nil, autoReleaseHour = nil, disabled = nil, digestHeader = nil, recencyWebEnabled = nil, dontRewriteMessageIDHeader = nil, addHeadersAndFooters = nil, visitors = nil, noSearch = nil, subscriptionReports = nil, noNNTP = nil, maxMessageSize = nil, purgeReferredInterval = nil, makePostsAnonymous = nil, keywords = nil, additional = nil, addListNameToSubject = nil, recipientLoggingLevel = nil, enableScripting = nil, to = nil, topic = nil, runProgAfterPosting = nil, cleanNotif = nil, deliveryReports = nil, recencyMailCount = nil, runProgBeforeUnsub = nil, moderated = nil, allowCrossPosting = nil, maxPostsPerUser = nil, confirmUnsubscribes = nil, noArchive = nil, recencyDayCount = nil, purgeUnconfirmedInterval = nil, removeDuplicateCrossPostings = nil, archiveDays = nil, notifyHeldInterval = nil, trackAllUrls = nil, purgeUnapprovedInterval = nil, messageFooter = nil, recencyOperator = nil, listName = nil, maxQuoting = nil, defaultSubject = nil, releasePending = nil, keepOutmailPostings = nil, privApprov = nil, postPassword = nil, defaultFrom = nil, anyoneCanPost = nil, scriptingLevel = nil, child = nil, shortDescription = nil, noEmailSubscriptions = nil, detectHtmlByDefault = nil, sMTPFrom = nil, mriVisibility = nil, listID = nil, blankSubjectOk = nil, allowDuplicatePosts = nil, recencyEmailEnabled = nil, mergeCapOverride = nil, cleanAuto = nil, from = nil, noBodyOk = nil, newSubscriberSecurity = nil, maxMessNum = nil, digestFooter = nil)
        @sMTPHeaders = sMTPHeaders
        @errHold = errHold
        @admin = admin
        @maxMembers = maxMembers
        @referralsPerDay = referralsPerDay
        @detectOpenByDefault = detectOpenByDefault
        @subscribePassword = subscribePassword
        @messageHeader = messageHeader
        @tclMergeInit = tclMergeInit
        @replyTo = replyTo
        @modifyHeaderDate = modifyHeaderDate
        @sponsOrgID = sponsOrgID
        @defaultTo = defaultTo
        @runProgAfterSub = runProgAfterSub
        @noListHeader = noListHeader
        @archiveNum = archiveNum
        @confirmSubscribes = confirmSubscribes
        @allowInfo = allowInfo
        @simpleSub = simpleSub
        @memberListSecurity = memberListSecurity
        @runProgAfterUnsub = runProgAfterUnsub
        @runProgBeforePosting = runProgBeforePosting
        @passwordRequired = passwordRequired
        @onlyAllowAdminSend = onlyAllowAdminSend
        @noEmail = noEmail
        @approveNum = approveNum
        @recencySequentialEnabled = recencySequentialEnabled
        @headerRemove = headerRemove
        @recencyTriggeredEnabled = recencyTriggeredEnabled
        @purgeExpiredInterval = purgeExpiredInterval
        @runProgBeforeSub = runProgBeforeSub
        @nameRequired = nameRequired
        @descLongDocID = descLongDocID
        @comment = comment
        @commentsID = commentsID
        @purgeHeldInterval = purgeHeldInterval
        @purgeUnsubInterval = purgeUnsubInterval
        @dateCreated = dateCreated
        @autoReleaseHour = autoReleaseHour
        @disabled = disabled
        @digestHeader = digestHeader
        @recencyWebEnabled = recencyWebEnabled
        @dontRewriteMessageIDHeader = dontRewriteMessageIDHeader
        @addHeadersAndFooters = addHeadersAndFooters
        @visitors = visitors
        @noSearch = noSearch
        @subscriptionReports = subscriptionReports
        @noNNTP = noNNTP
        @maxMessageSize = maxMessageSize
        @purgeReferredInterval = purgeReferredInterval
        @makePostsAnonymous = makePostsAnonymous
        @keywords = keywords
        @additional = additional
        @addListNameToSubject = addListNameToSubject
        @recipientLoggingLevel = recipientLoggingLevel
        @enableScripting = enableScripting
        @to = to
        @topic = topic
        @runProgAfterPosting = runProgAfterPosting
        @cleanNotif = cleanNotif
        @deliveryReports = deliveryReports
        @recencyMailCount = recencyMailCount
        @runProgBeforeUnsub = runProgBeforeUnsub
        @moderated = moderated
        @allowCrossPosting = allowCrossPosting
        @maxPostsPerUser = maxPostsPerUser
        @confirmUnsubscribes = confirmUnsubscribes
        @noArchive = noArchive
        @recencyDayCount = recencyDayCount
        @purgeUnconfirmedInterval = purgeUnconfirmedInterval
        @removeDuplicateCrossPostings = removeDuplicateCrossPostings
        @archiveDays = archiveDays
        @notifyHeldInterval = notifyHeldInterval
        @trackAllUrls = trackAllUrls
        @purgeUnapprovedInterval = purgeUnapprovedInterval
        @messageFooter = messageFooter
        @recencyOperator = recencyOperator
        @listName = listName
        @maxQuoting = maxQuoting
        @defaultSubject = defaultSubject
        @releasePending = releasePending
        @keepOutmailPostings = keepOutmailPostings
        @privApprov = privApprov
        @postPassword = postPassword
        @defaultFrom = defaultFrom
        @anyoneCanPost = anyoneCanPost
        @scriptingLevel = scriptingLevel
        @child = child
        @shortDescription = shortDescription
        @noEmailSubscriptions = noEmailSubscriptions
        @detectHtmlByDefault = detectHtmlByDefault
        @sMTPFrom = sMTPFrom
        @mriVisibility = mriVisibility
        @listID = listID
        @blankSubjectOk = blankSubjectOk
        @allowDuplicatePosts = allowDuplicatePosts
        @recencyEmailEnabled = recencyEmailEnabled
        @mergeCapOverride = mergeCapOverride
        @cleanAuto = cleanAuto
        @from = from
        @noBodyOk = noBodyOk
        @newSubscriberSecurity = newSubscriberSecurity
        @maxMessNum = maxMessNum
        @digestFooter = digestFooter
      end
    end

    # {http://tempuri.org/ns1.xsd}MemberBanStruct
    #   domain - SOAP::SOAPString
    #   userName - SOAP::SOAPString
    #   listName - SOAP::SOAPString
    #   siteName - SOAP::SOAPString
    #   banLogic - BanLogicEnum
    class MemberBanStruct
      attr_accessor :domain
      attr_accessor :userName
      attr_accessor :listName
      attr_accessor :siteName
      attr_accessor :banLogic

      def initialize(domain = nil, userName = nil, listName = nil, siteName = nil, banLogic = nil)
        @domain = domain
        @userName = userName
        @listName = listName
        @siteName = siteName
        @banLogic = banLogic
      end
    end

    # {http://tempuri.org/ns1.xsd}TopicStruct
    #   topicName - SOAP::SOAPString
    #   topicDescription - SOAP::SOAPString
    #   siteName - SOAP::SOAPString
    #   hiddenTopic - SOAP::SOAPBoolean
    class TopicStruct
      attr_accessor :topicName
      attr_accessor :topicDescription
      attr_accessor :siteName
      attr_accessor :hiddenTopic

      def initialize(topicName = nil, topicDescription = nil, siteName = nil, hiddenTopic = nil)
        @topicName = topicName
        @topicDescription = topicDescription
        @siteName = siteName
        @hiddenTopic = hiddenTopic
      end
    end

    # {http://tempuri.org/ns1.xsd}SiteStruct
    #   siteID - SOAP::SOAPInt
    #   siteName - SOAP::SOAPString
    #   siteDescription - SOAP::SOAPString
    #   hostName - SOAP::SOAPString
    #   webInterfaceURL - SOAP::SOAPString
    class SiteStruct
      attr_accessor :siteID
      attr_accessor :siteName
      attr_accessor :siteDescription
      attr_accessor :hostName
      attr_accessor :webInterfaceURL

      def initialize(siteID = nil, siteName = nil, siteDescription = nil, hostName = nil, webInterfaceURL = nil)
        @siteID = siteID
        @siteName = siteName
        @siteDescription = siteDescription
        @hostName = hostName
        @webInterfaceURL = webInterfaceURL
      end
    end

    # {http://tempuri.org/ns1.xsd}PreviewStruct
    #   textToMerge - SOAP::SOAPString
    #   memberID - SOAP::SOAPInt
    #   subsetID - SOAP::SOAPInt
    class PreviewStruct
      attr_accessor :textToMerge
      attr_accessor :memberID
      attr_accessor :subsetID

      def initialize(textToMerge = nil, memberID = nil, subsetID = nil)
        @textToMerge = textToMerge
        @memberID = memberID
        @subsetID = subsetID
      end
    end

    # {http://tempuri.org/ns1.xsd}ServerAdminStruct
    #   adminID - SOAP::SOAPInt
    #   name - SOAP::SOAPString
    #   emailAddress - SOAP::SOAPString
    #   password - SOAP::SOAPString
    class ServerAdminStruct
      attr_accessor :adminID
      attr_accessor :name
      attr_accessor :emailAddress
      attr_accessor :password

      def initialize(adminID = nil, name = nil, emailAddress = nil, password = nil)
        @adminID = adminID
        @name = name
        @emailAddress = emailAddress
        @password = password
      end
    end

    # {http://tempuri.org/ns1.xsd}SiteAdminStruct
    #   adminID - SOAP::SOAPInt
    #   name - SOAP::SOAPString
    #   emailAddress - SOAP::SOAPString
    #   password - SOAP::SOAPString
    #   whatSites - ArrayOfstring
    class SiteAdminStruct
      attr_accessor :adminID
      attr_accessor :name
      attr_accessor :emailAddress
      attr_accessor :password
      attr_accessor :whatSites

      def initialize(adminID = nil, name = nil, emailAddress = nil, password = nil, whatSites = nil)
        @adminID = adminID
        @name = name
        @emailAddress = emailAddress
        @password = password
        @whatSites = whatSites
      end
    end

    # {http://www.lyris.com/lmapi}ArrayOfDocPart
    class ArrayOfDocPart < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfSimpleMemberStruct
    class ArrayOfSimpleMemberStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfCharSetStruct
    class ArrayOfCharSetStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfKeyValueType
    class ArrayOfKeyValueType < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfListStruct
    class ArrayOfListStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfMailingStruct
    class ArrayOfMailingStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfSegmentStruct
    class ArrayOfSegmentStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfint
    class ArrayOfint < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfTrackingSummaryStruct
    class ArrayOfTrackingSummaryStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfArrayOfstring
    class ArrayOfArrayOfstring < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfMemberStruct
    class ArrayOfMemberStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfTinyMemberStruct
    class ArrayOfTinyMemberStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfMemberBanStruct
    class ArrayOfMemberBanStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfstring
    class ArrayOfstring < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfSimpleMailingStruct
    class ArrayOfSimpleMailingStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfContentStruct
    class ArrayOfContentStruct < ::Array
    end

    # {http://www.lyris.com/lmapi}ArrayOfUrlTrackingStruct
    class ArrayOfUrlTrackingStruct < ::Array
    end

    # {http://tempuri.org/ns1.xsd}LicenseLevelEnum
    class LicenseLevelEnum < ::String
      E = LicenseLevelEnum.new("E")
      P = LicenseLevelEnum.new("P")
      S = LicenseLevelEnum.new("S")
    end

    # {http://tempuri.org/ns1.xsd}ListTypeEnum
    class ListTypeEnum < ::String
      AnnouncementModerated = ListTypeEnum.new("announcement-moderated")
      DiscussionModerated = ListTypeEnum.new("discussion-moderated")
      DiscussionUnmoderated = ListTypeEnum.new("discussion-unmoderated")
      Marketing = ListTypeEnum.new("marketing")
    end

    # {http://tempuri.org/ns1.xsd}MriVisibilityEnum
    class MriVisibilityEnum < ::String
      H = MriVisibilityEnum.new("H")
      I = MriVisibilityEnum.new("I")
      V = MriVisibilityEnum.new("V")
    end

    # {http://tempuri.org/ns1.xsd}MemberStatusEnum
    class MemberStatusEnum < ::String
      Confirm = MemberStatusEnum.new("confirm")
      ConfirmFailed = MemberStatusEnum.new("confirm-failed")
      Expired = MemberStatusEnum.new("expired")
      Held = MemberStatusEnum.new("held")
      Member = MemberStatusEnum.new("member")
      NeedsConfirm = MemberStatusEnum.new("needs-confirm")
      NeedsGoodbye = MemberStatusEnum.new("needs-goodbye")
      NeedsHello = MemberStatusEnum.new("needs-hello")
      Normal = MemberStatusEnum.new("normal")
      Private = MemberStatusEnum.new("private")
      Referred = MemberStatusEnum.new("referred")
      Unsub = MemberStatusEnum.new("unsub")
    end

    # {http://tempuri.org/ns1.xsd}MessageTypeEnum
    class MessageTypeEnum < ::String
      Confirm = MessageTypeEnum.new("confirm")
      Delivery = MessageTypeEnum.new("delivery")
      Goodbye = MessageTypeEnum.new("goodbye")
      Held = MessageTypeEnum.new("held")
      Hello = MessageTypeEnum.new("hello")
      Private = MessageTypeEnum.new("private")
    end

    # {http://tempuri.org/ns1.xsd}ModeratedEnum
    class ModeratedEnum < ::String
      All = ModeratedEnum.new("all")
      No = ModeratedEnum.new("no")
      Number = ModeratedEnum.new("number")
    end

    # {http://tempuri.org/ns1.xsd}ConferenceVisibilityEnum
    class ConferenceVisibilityEnum < ::String
      D = ConferenceVisibilityEnum.new("D")
      E = ConferenceVisibilityEnum.new("E")
      M = ConferenceVisibilityEnum.new("M")
    end

    # {http://tempuri.org/ns1.xsd}ConferencePostEnum
    class ConferencePostEnum < ::String
      A = ConferencePostEnum.new("A")
      E = ConferencePostEnum.new("E")
      M = ConferencePostEnum.new("M")
    end

    # {http://tempuri.org/ns1.xsd}ConferenceDurationEnum
    class ConferenceDurationEnum < ::String
      C_1 = ConferenceDurationEnum.new("1")
      C_10 = ConferenceDurationEnum.new("10")
      C_12 = ConferenceDurationEnum.new("12")
      C_120 = ConferenceDurationEnum.new("120")
      C_144 = ConferenceDurationEnum.new("144")
      C_168 = ConferenceDurationEnum.new("168")
      C_192 = ConferenceDurationEnum.new("192")
      C_2 = ConferenceDurationEnum.new("2")
      C_24 = ConferenceDurationEnum.new("24")
      C_3 = ConferenceDurationEnum.new("3")
      C_4 = ConferenceDurationEnum.new("4")
      C_48 = ConferenceDurationEnum.new("48")
      C_6 = ConferenceDurationEnum.new("6")
      C_72 = ConferenceDurationEnum.new("72")
      C_96 = ConferenceDurationEnum.new("96")
    end

    # {http://tempuri.org/ns1.xsd}ConfirmUnsubEnum
    class ConfirmUnsubEnum < ::String
      C_0 = ConfirmUnsubEnum.new("0")
      C_1 = ConfirmUnsubEnum.new("1")
      C_2 = ConfirmUnsubEnum.new("2")
    end

    # {http://tempuri.org/ns1.xsd}PasswordRequiredEnum
    class PasswordRequiredEnum < ::String
      C_0 = PasswordRequiredEnum.new("0")
      C_1 = PasswordRequiredEnum.new("1")
      C_2 = PasswordRequiredEnum.new("2")
    end

    # {http://tempuri.org/ns1.xsd}MemberListSecurityEnum
    class MemberListSecurityEnum < ::String
      C_0 = MemberListSecurityEnum.new("0")
      C_1 = MemberListSecurityEnum.new("1")
      C_2 = MemberListSecurityEnum.new("2")
    end

    # {http://tempuri.org/ns1.xsd}RecencyOperatorEnum
    class RecencyOperatorEnum < ::String
      E = RecencyOperatorEnum.new("e")
      F = RecencyOperatorEnum.new("f")
      M = RecencyOperatorEnum.new("m")
    end

    # {http://tempuri.org/ns1.xsd}MemberKindEnum
    class MemberKindEnum < ::String
      Daymimedigest = MemberKindEnum.new("daymimedigest")
      Digest = MemberKindEnum.new("digest")
      Expired = MemberKindEnum.new("expired")
      Index = MemberKindEnum.new("index")
      Mail = MemberKindEnum.new("mail")
      Mimedigest = MemberKindEnum.new("mimedigest")
      Nomail = MemberKindEnum.new("nomail")
    end

    # {http://tempuri.org/ns1.xsd}NewSubscriberPolicyEnum
    class NewSubscriberPolicyEnum < ::String
      Closed = NewSubscriberPolicyEnum.new("closed")
      Open = NewSubscriberPolicyEnum.new("open")
      Password = NewSubscriberPolicyEnum.new("password")
      Private = NewSubscriberPolicyEnum.new("private")
    end

    # {http://tempuri.org/ns1.xsd}BanLogicEnum
    class BanLogicEnum < ::String
      A = BanLogicEnum.new("A")
      C = BanLogicEnum.new("C")
      R = BanLogicEnum.new("R")
    end

    # {http://tempuri.org/ns1.xsd}PostPasswordEnum
    class PostPasswordEnum < ::String
      C_0 = PostPasswordEnum.new("0")
      C_1 = PostPasswordEnum.new("1")
      C_2 = PostPasswordEnum.new("2")
    end

    # {http://tempuri.org/ns1.xsd}NameRequiredEnum
    class NameRequiredEnum < ::String
      C_0 = NameRequiredEnum.new("0")
      C_1 = NameRequiredEnum.new("1")
      C_2 = NameRequiredEnum.new("2")
    end

    # {http://tempuri.org/ns1.xsd}ScriptingLevelEnum
    class ScriptingLevelEnum < ::String
      C_0 = ScriptingLevelEnum.new("0")
      C_1 = ScriptingLevelEnum.new("1")
      C_2 = ScriptingLevelEnum.new("2")
      C_3 = ScriptingLevelEnum.new("3")
    end

    # {http://tempuri.org/ns1.xsd}SegmentTypeEnum
    class SegmentTypeEnum < ::String
      Normal = SegmentTypeEnum.new("normal")
      Sequential = SegmentTypeEnum.new("sequential")
      Triggered = SegmentTypeEnum.new("triggered")
    end

    # {http://tempuri.org/ns1.xsd}LoggingLevelEnum
    class LoggingLevelEnum < ::String
      E = LoggingLevelEnum.new("E")
      F = LoggingLevelEnum.new("F")
      M = LoggingLevelEnum.new("M")
      N = LoggingLevelEnum.new("N")
    end

    # {http://tempuri.org/ns1.xsd}AddHeadersAndFootersEnum
    class AddHeadersAndFootersEnum < ::String
      A = AddHeadersAndFootersEnum.new("A")
      I = AddHeadersAndFootersEnum.new("I")
      N = AddHeadersAndFootersEnum.new("N")
    end

    # {http://tempuri.org/ns1.xsd}DocTypeEnum
    class DocTypeEnum < ::String
      BILLING = DocTypeEnum.new("BILLING")
      CONTENTv2 = DocTypeEnum.new("CONTENTv2")
    end

    # {http://tempuri.org/ns1.xsd}EnableScriptingEnum
    class EnableScriptingEnum < ::String
      C_0 = EnableScriptingEnum.new("0")
      C_1 = EnableScriptingEnum.new("1")
      C_2 = EnableScriptingEnum.new("2")
    end

    # {http://tempuri.org/ns1.xsd}RecencyWhichEnum
    class RecencyWhichEnum < ::String
      E = RecencyWhichEnum.new("e")
      L = RecencyWhichEnum.new("l")
      M = RecencyWhichEnum.new("m")
    end

    # {http://tempuri.org/ns1.xsd}MailFormatEnum
    class MailFormatEnum < ::String
      H = MailFormatEnum.new("H")
      M = MailFormatEnum.new("M")
      T = MailFormatEnum.new("T")
    end

    # {http://tempuri.org/ns1.xsd}MailSectionEncodingEnum
    class MailSectionEncodingEnum < ::String
      Base64 = MailSectionEncodingEnum.new("base64")
      C_7bit = MailSectionEncodingEnum.new("7bit")
      C_8bit = MailSectionEncodingEnum.new("8bit")
      QuotedPrintable = MailSectionEncodingEnum.new("quoted-printable")
    end

    # {http://tempuri.org/ns1.xsd}FieldTypeEnum
    class FieldTypeEnum < ::String
      C_Integer = FieldTypeEnum.new("integer")
      Char1 = FieldTypeEnum.new("char1")
      Char2 = FieldTypeEnum.new("char2")
      Char3 = FieldTypeEnum.new("char3")
      Date = FieldTypeEnum.new("date")
      Varchar10 = FieldTypeEnum.new("varchar10")
      Varchar100 = FieldTypeEnum.new("varchar100")
      Varchar150 = FieldTypeEnum.new("varchar150")
      Varchar20 = FieldTypeEnum.new("varchar20")
      Varchar200 = FieldTypeEnum.new("varchar200")
      Varchar250 = FieldTypeEnum.new("varchar250")
      Varchar30 = FieldTypeEnum.new("varchar30")
      Varchar40 = FieldTypeEnum.new("varchar40")
      Varchar5 = FieldTypeEnum.new("varchar5")
      Varchar50 = FieldTypeEnum.new("varchar50")
      Varchar60 = FieldTypeEnum.new("varchar60")
      Varchar70 = FieldTypeEnum.new("varchar70")
      Varchar80 = FieldTypeEnum.new("varchar80")
      Varchar90 = FieldTypeEnum.new("varchar90")
    end
  end
end
