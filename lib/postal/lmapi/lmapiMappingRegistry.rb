# Maps the Lyris data model to XML instance

require File.expand_path('lib/postal/lmapi/lmapi.rb')
require 'soap/mapping'

module LmapiMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsNs1Xsd = "http://tempuri.org/ns1.xsd"

  EncodedRegistry.register(
    :class => SimpleMailingStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SimpleMailingStruct"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "Subject")], [0, 1]],
      ["isHtmlSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsHtmlSectionEncoded")], [0, 1]],
      ["htmlSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "HtmlSectionEncoding")], [0, 1]],
      ["htmlMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "HtmlMessage")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "To")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]],
      ["isTextSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsTextSectionEncoded")], [0, 1]],
      ["textSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "TextSectionEncoding")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["textMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "TextMessage")], [0, 1]],
      ["attachments", ["SOAP::SOAPString", XSD::QName.new(nil, "Attachments")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "From")], [0, 1]],
      ["additionalHeaders", ["SOAP::SOAPString", XSD::QName.new(nil, "AdditionalHeaders")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MessageStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MessageStruct"),
    :schema_element => [
      ["recipientEmailsIn", ["ArrayOfstring", XSD::QName.new(nil, "RecipientEmailsIn")], [0, 1]],
      ["recipientMemberIDsIn", ["ArrayOfint", XSD::QName.new(nil, "RecipientMemberIDsIn")], [0, 1]],
      ["headersIn", ["ArrayOfKeyValueType", XSD::QName.new(nil, "HeadersIn")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "Body")], [0, 1]],
      ["segmentID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SegmentID")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DocPart,
    :schema_type => XSD::QName.new(NsNs1Xsd, "DocPart"),
    :schema_element => [
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "Body")], [0, 1]],
      ["mimePartName", ["SOAP::SOAPString", XSD::QName.new(nil, "MimePartName")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]],
      ["encoding", ["MailSectionEncodingEnum", XSD::QName.new(nil, "Encoding")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ContentStruct"),
    :schema_element => [
      ["headerTo", ["SOAP::SOAPString", XSD::QName.new(nil, "HeaderTo")], [0, 1]],
      ["isTemplate", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsTemplate")], [0, 1]],
      ["docType", ["DocTypeEnum", XSD::QName.new(nil, "DocType")], [0, 1]],
      ["contentID", ["SOAP::SOAPInt", XSD::QName.new(nil, "ContentID")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["nativeTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "NativeTitle")], [0, 1]],
      ["headerFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "HeaderFrom")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["isReadOnly", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsReadOnly")], [0, 1]],
      ["dateCreated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateCreated")], [0, 1]],
      ["docParts", ["ArrayOfDocPart", XSD::QName.new(nil, "DocParts")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UrlTrackingStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "UrlTrackingStruct"),
    :schema_element => [
      ["uniqueOpens", ["SOAP::SOAPString", XSD::QName.new(nil, "UniqueOpens")], [0, 1]],
      ["opens", ["SOAP::SOAPString", XSD::QName.new(nil, "Opens")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "Url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MemberStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberStruct"),
    :schema_element => [
      ["additional", ["SOAP::SOAPString", XSD::QName.new(nil, "Additional")], [0, 1]],
      ["membershipKind", ["MemberKindEnum", XSD::QName.new(nil, "MembershipKind")], [0, 1]],
      ["approvalNeeded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ApprovalNeeded")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")], [0, 1]],
      ["notifyError", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NotifyError")], [0, 1]],
      ["expireDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ExpireDate")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "Comment")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(nil, "UserID")], [0, 1]],
      ["readsHtml", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReadsHtml")], [0, 1]],
      ["receiveAdminEmail", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveAdminEmail")], [0, 1]],
      ["mailFormat", ["MailFormatEnum", XSD::QName.new(nil, "MailFormat")], [0, 1]],
      ["dateConfirm", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateConfirm")], [0, 1]],
      ["numberOfBounces", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfBounces")], [0, 1]],
      ["numApprovalsNeeded", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumApprovalsNeeded")], [0, 1]],
      ["notifySubmission", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NotifySubmission")], [0, 1]],
      ["noRepro", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoRepro")], [0, 1]],
      ["memberID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MemberID")], [0, 1]],
      ["demographics", ["ArrayOfKeyValueType", XSD::QName.new(nil, "Demographics")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]],
      ["dateJoined", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateJoined")], [0, 1]],
      ["isListAdmin", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsListAdmin")], [0, 1]],
      ["receiveAcknowlegment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveAcknowlegment")], [0, 1]],
      ["dateBounce", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateBounce")], [0, 1]],
      ["dateHeld", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateHeld")], [0, 1]],
      ["memberStatus", ["MemberStatusEnum", XSD::QName.new(nil, "MemberStatus")], [0, 1]],
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")], [0, 1]],
      ["canApprovePending", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanApprovePending")], [0, 1]],
      ["cleanAuto", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CleanAuto")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["dateUnsubscribed", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateUnsubscribed")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CharSetStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "CharSetStruct"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TinyMemberStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "TinyMemberStruct"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MailingStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MailingStruct"),
    :schema_element => [
      ["enableRecency", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "EnableRecency")], [0, 1]],
      ["isHtmlSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsHtmlSectionEncoded")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "Subject")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "Campaign")], [0, 1]],
      ["htmlSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "HtmlSectionEncoding")], [0, 1]],
      ["htmlMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "HtmlMessage")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "To")], [0, 1]],
      ["recencyWhich", ["RecencyWhichEnum", XSD::QName.new(nil, "RecencyWhich")], [0, 1]],
      ["resendAfterDays", ["SOAP::SOAPInt", XSD::QName.new(nil, "ResendAfterDays")], [0, 1]],
      ["sampleSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "SampleSize")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]],
      ["replyTo", ["SOAP::SOAPString", XSD::QName.new(nil, "ReplyTo")], [0, 1]],
      ["isTextSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsTextSectionEncoded")], [0, 1]],
      ["textSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "TextSectionEncoding")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["textMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "TextMessage")], [0, 1]],
      ["trackOpens", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TrackOpens")], [0, 1]],
      ["recencyNumberOfMailings", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyNumberOfMailings")], [0, 1]],
      ["recencyDays", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyDays")], [0, 1]],
      ["bypassModeration", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "BypassModeration")], [0, 1]],
      ["attachments", ["SOAP::SOAPString", XSD::QName.new(nil, "Attachments")], [0, 1]],
      ["dontAttemptAfterDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DontAttemptAfterDate")], [0, 1]],
      ["rewriteDateWhenSent", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RewriteDateWhenSent")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "From")], [0, 1]],
      ["additionalHeaders", ["SOAP::SOAPString", XSD::QName.new(nil, "AdditionalHeaders")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["detectHtml", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DetectHtml")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SegmentStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SegmentStruct"),
    :schema_element => [
      ["segmentID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SegmentID")], [0, 1]],
      ["segmentName", ["SOAP::SOAPString", XSD::QName.new(nil, "SegmentName")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["segmentType", ["SegmentTypeEnum", XSD::QName.new(nil, "SegmentType")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["numTestRecords", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumTestRecords")], [0, 1]],
      ["clauseAdd", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseAdd")], [0, 1]],
      ["clauseWhere", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseWhere")], [0, 1]],
      ["clauseAfterSelect", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseAfterSelect")], [0, 1]],
      ["clauseFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseFrom")], [0, 1]],
      ["clauseOrderBy", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseOrderBy")], [0, 1]],
      ["clauseSelect", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseSelect")], [0, 1]],
      ["addWhereList", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddWhereList")], [0, 1]],
      ["addWhereMemberType", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddWhereMemberType")], [0, 1]],
      ["addWhereSubType", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddWhereSubType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TrackingSummaryStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "TrackingSummaryStruct"),
    :schema_element => [
      ["transientFailure", ["SOAP::SOAPInt", XSD::QName.new(nil, "TransientFailure")], [0, 1]],
      ["success", ["SOAP::SOAPInt", XSD::QName.new(nil, "Success")], [0, 1]],
      ["expired", ["SOAP::SOAPInt", XSD::QName.new(nil, "Expired")], [0, 1]],
      ["paused", ["SOAP::SOAPInt", XSD::QName.new(nil, "Paused")], [0, 1]],
      ["mailMergeSkipped", ["SOAP::SOAPInt", XSD::QName.new(nil, "MailMergeSkipped")], [0, 1]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(nil, "Active")], [0, 1]],
      ["opens", ["SOAP::SOAPInt", XSD::QName.new(nil, "Opens")], [0, 1]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "Created")], [0, 1]],
      ["notAttempted", ["SOAP::SOAPInt", XSD::QName.new(nil, "NotAttempted")], [0, 1]],
      ["clickthroughs", ["SOAP::SOAPInt", XSD::QName.new(nil, "Clickthroughs")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["totalRecipients", ["SOAP::SOAPInt", XSD::QName.new(nil, "TotalRecipients")], [0, 1]],
      ["permanentFailure", ["SOAP::SOAPInt", XSD::QName.new(nil, "PermanentFailure")], [0, 1]],
      ["totalUndelivered", ["SOAP::SOAPInt", XSD::QName.new(nil, "TotalUndelivered")], [0, 1]],
      ["mailMergeAbort", ["SOAP::SOAPInt", XSD::QName.new(nil, "MailMergeAbort")], [0, 1]],
      ["uniqueOpens", ["SOAP::SOAPInt", XSD::QName.new(nil, "UniqueOpens")], [0, 1]],
      ["clickstreams", ["SOAP::SOAPInt", XSD::QName.new(nil, "Clickstreams")], [0, 1]],
      ["pending", ["SOAP::SOAPInt", XSD::QName.new(nil, "Pending")], [0, 1]],
      ["urls", ["ArrayOfUrlTrackingStruct", XSD::QName.new(nil, "Urls")], [0, 1]],
      ["mailingID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MailingID")], [0, 1]],
      ["v_retry", ["SOAP::SOAPInt", XSD::QName.new(nil, "Retry")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SimpleMemberStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SimpleMemberStruct"),
    :schema_element => [
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["memberID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MemberID")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => KeyValueType,
    :schema_type => XSD::QName.new(NsNs1Xsd, "KeyValueType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "Value")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ListStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ListStruct"),
    :schema_element => [
      ["sMTPHeaders", ["SOAP::SOAPString", XSD::QName.new(nil, "SMTPHeaders")], [0, 1]],
      ["errHold", ["SOAP::SOAPInt", XSD::QName.new(nil, "ErrHold")], [0, 1]],
      ["admin", ["SOAP::SOAPString", XSD::QName.new(nil, "Admin")], [0, 1]],
      ["maxMembers", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxMembers")], [0, 1]],
      ["referralsPerDay", ["SOAP::SOAPInt", XSD::QName.new(nil, "ReferralsPerDay")], [0, 1]],
      ["detectOpenByDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DetectOpenByDefault")], [0, 1]],
      ["subscribePassword", ["SOAP::SOAPString", XSD::QName.new(nil, "SubscribePassword")], [0, 1]],
      ["messageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "MessageHeader")], [0, 1]],
      ["tclMergeInit", ["SOAP::SOAPString", XSD::QName.new(nil, "TclMergeInit")], [0, 1]],
      ["replyTo", ["SOAP::SOAPString", XSD::QName.new(nil, "ReplyTo")], [0, 1]],
      ["modifyHeaderDate", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ModifyHeaderDate")], [0, 1]],
      ["sponsOrgID", ["SOAP::SOAPString", XSD::QName.new(nil, "SponsOrgID")], [0, 1]],
      ["defaultTo", ["SOAP::SOAPString", XSD::QName.new(nil, "DefaultTo")], [0, 1]],
      ["runProgAfterSub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgAfterSub")], [0, 1]],
      ["noListHeader", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoListHeader")], [0, 1]],
      ["archiveNum", ["SOAP::SOAPInt", XSD::QName.new(nil, "ArchiveNum")], [0, 1]],
      ["confirmSubscribes", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ConfirmSubscribes")], [0, 1]],
      ["allowInfo", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AllowInfo")], [0, 1]],
      ["simpleSub", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SimpleSub")], [0, 1]],
      ["memberListSecurity", ["MemberListSecurityEnum", XSD::QName.new(nil, "MemberListSecurity")], [0, 1]],
      ["runProgAfterUnsub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgAfterUnsub")], [0, 1]],
      ["runProgBeforePosting", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgBeforePosting")], [0, 1]],
      ["passwordRequired", ["PasswordRequiredEnum", XSD::QName.new(nil, "PasswordRequired")], [0, 1]],
      ["onlyAllowAdminSend", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnlyAllowAdminSend")], [0, 1]],
      ["noEmail", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoEmail")], [0, 1]],
      ["approveNum", ["SOAP::SOAPInt", XSD::QName.new(nil, "ApproveNum")], [0, 1]],
      ["recencySequentialEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencySequentialEnabled")], [0, 1]],
      ["headerRemove", ["SOAP::SOAPString", XSD::QName.new(nil, "HeaderRemove")], [0, 1]],
      ["recencyTriggeredEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencyTriggeredEnabled")], [0, 1]],
      ["purgeExpiredInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeExpiredInterval")], [0, 1]],
      ["runProgBeforeSub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgBeforeSub")], [0, 1]],
      ["nameRequired", ["NameRequiredEnum", XSD::QName.new(nil, "NameRequired")], [0, 1]],
      ["descLongDocID", ["SOAP::SOAPString", XSD::QName.new(nil, "DescLongDocID")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "Comment")], [0, 1]],
      ["commentsID", ["SOAP::SOAPString", XSD::QName.new(nil, "CommentsID")], [0, 1]],
      ["purgeHeldInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeHeldInterval")], [0, 1]],
      ["purgeUnsubInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeUnsubInterval")], [0, 1]],
      ["dateCreated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateCreated")], [0, 1]],
      ["autoReleaseHour", ["SOAP::SOAPInt", XSD::QName.new(nil, "AutoReleaseHour")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Disabled")], [0, 1]],
      ["digestHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "DigestHeader")], [0, 1]],
      ["recencyWebEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencyWebEnabled")], [0, 1]],
      ["dontRewriteMessageIDHeader", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DontRewriteMessageIDHeader")], [0, 1]],
      ["addHeadersAndFooters", ["AddHeadersAndFootersEnum", XSD::QName.new(nil, "AddHeadersAndFooters")], [0, 1]],
      ["visitors", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Visitors")], [0, 1]],
      ["noSearch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoSearch")], [0, 1]],
      ["subscriptionReports", ["ArrayOfstring", XSD::QName.new(nil, "SubscriptionReports")], [0, 1]],
      ["noNNTP", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoNNTP")], [0, 1]],
      ["maxMessageSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxMessageSize")], [0, 1]],
      ["purgeReferredInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeReferredInterval")], [0, 1]],
      ["makePostsAnonymous", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "MakePostsAnonymous")], [0, 1]],
      ["keywords", ["SOAP::SOAPString", XSD::QName.new(nil, "Keywords")], [0, 1]],
      ["additional", ["SOAP::SOAPString", XSD::QName.new(nil, "Additional")], [0, 1]],
      ["addListNameToSubject", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddListNameToSubject")], [0, 1]],
      ["recipientLoggingLevel", ["LoggingLevelEnum", XSD::QName.new(nil, "RecipientLoggingLevel")], [0, 1]],
      ["enableScripting", ["EnableScriptingEnum", XSD::QName.new(nil, "EnableScripting")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "To")], [0, 1]],
      ["topic", ["SOAP::SOAPString", XSD::QName.new(nil, "Topic")], [0, 1]],
      ["runProgAfterPosting", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgAfterPosting")], [0, 1]],
      ["cleanNotif", ["SOAP::SOAPInt", XSD::QName.new(nil, "CleanNotif")], [0, 1]],
      ["deliveryReports", ["ArrayOfstring", XSD::QName.new(nil, "DeliveryReports")], [0, 1]],
      ["recencyMailCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyMailCount")], [0, 1]],
      ["runProgBeforeUnsub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgBeforeUnsub")], [0, 1]],
      ["moderated", ["ModeratedEnum", XSD::QName.new(nil, "Moderated")], [0, 1]],
      ["allowCrossPosting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AllowCrossPosting")], [0, 1]],
      ["maxPostsPerUser", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxPostsPerUser")], [0, 1]],
      ["confirmUnsubscribes", ["ConfirmUnsubEnum", XSD::QName.new(nil, "ConfirmUnsubscribes")], [0, 1]],
      ["noArchive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoArchive")], [0, 1]],
      ["recencyDayCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyDayCount")], [0, 1]],
      ["purgeUnconfirmedInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeUnconfirmedInterval")], [0, 1]],
      ["removeDuplicateCrossPostings", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RemoveDuplicateCrossPostings")], [0, 1]],
      ["archiveDays", ["SOAP::SOAPInt", XSD::QName.new(nil, "ArchiveDays")], [0, 1]],
      ["notifyHeldInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "NotifyHeldInterval")], [0, 1]],
      ["trackAllUrls", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TrackAllUrls")], [0, 1]],
      ["purgeUnapprovedInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeUnapprovedInterval")], [0, 1]],
      ["messageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "MessageFooter")], [0, 1]],
      ["recencyOperator", ["RecencyOperatorEnum", XSD::QName.new(nil, "RecencyOperator")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["maxQuoting", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxQuoting")], [0, 1]],
      ["defaultSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "DefaultSubject")], [0, 1]],
      ["releasePending", ["SOAP::SOAPInt", XSD::QName.new(nil, "ReleasePending")], [0, 1]],
      ["keepOutmailPostings", ["SOAP::SOAPInt", XSD::QName.new(nil, "KeepOutmailPostings")], [0, 1]],
      ["privApprov", ["SOAP::SOAPString", XSD::QName.new(nil, "PrivApprov")], [0, 1]],
      ["postPassword", ["PostPasswordEnum", XSD::QName.new(nil, "PostPassword")], [0, 1]],
      ["defaultFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "DefaultFrom")], [0, 1]],
      ["anyoneCanPost", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AnyoneCanPost")], [0, 1]],
      ["scriptingLevel", ["ScriptingLevelEnum", XSD::QName.new(nil, "ScriptingLevel")], [0, 1]],
      ["child", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Child")], [0, 1]],
      ["shortDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ShortDescription")], [0, 1]],
      ["noEmailSubscriptions", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoEmailSubscriptions")], [0, 1]],
      ["detectHtmlByDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DetectHtmlByDefault")], [0, 1]],
      ["sMTPFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "SMTPFrom")], [0, 1]],
      ["mriVisibility", ["MriVisibilityEnum", XSD::QName.new(nil, "MriVisibility")], [0, 1]],
      ["listID", ["SOAP::SOAPInt", XSD::QName.new(nil, "ListID")], [0, 1]],
      ["blankSubjectOk", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "BlankSubjectOk")], [0, 1]],
      ["allowDuplicatePosts", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AllowDuplicatePosts")], [0, 1]],
      ["recencyEmailEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencyEmailEnabled")], [0, 1]],
      ["mergeCapOverride", ["ScriptingLevelEnum", XSD::QName.new(nil, "MergeCapOverride")], [0, 1]],
      ["cleanAuto", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CleanAuto")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "From")], [0, 1]],
      ["noBodyOk", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoBodyOk")], [0, 1]],
      ["newSubscriberSecurity", ["NewSubscriberPolicyEnum", XSD::QName.new(nil, "NewSubscriberSecurity")], [0, 1]],
      ["maxMessNum", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxMessNum")], [0, 1]],
      ["digestFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "DigestFooter")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MemberBanStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberBanStruct"),
    :schema_element => [
      ["domain", ["SOAP::SOAPString", XSD::QName.new(nil, "Domain")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "UserName")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["banLogic", ["BanLogicEnum", XSD::QName.new(nil, "BanLogic")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TopicStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "TopicStruct"),
    :schema_element => [
      ["topicName", ["SOAP::SOAPString", XSD::QName.new(nil, "TopicName")], [0, 1]],
      ["topicDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "TopicDescription")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["hiddenTopic", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HiddenTopic")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SiteStruct"),
    :schema_element => [
      ["siteID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SiteID")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["siteDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteDescription")], [0, 1]],
      ["hostName", ["SOAP::SOAPString", XSD::QName.new(nil, "HostName")], [0, 1]],
      ["webInterfaceURL", ["SOAP::SOAPString", XSD::QName.new(nil, "WebInterfaceURL")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PreviewStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "PreviewStruct"),
    :schema_element => [
      ["textToMerge", ["SOAP::SOAPString", XSD::QName.new(nil, "TextToMerge")], [0, 1]],
      ["memberID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MemberID")], [0, 1]],
      ["subsetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SubsetID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServerAdminStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ServerAdminStruct"),
    :schema_element => [
      ["adminID", ["SOAP::SOAPInt", XSD::QName.new(nil, "AdminID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteAdminStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SiteAdminStruct"),
    :schema_element => [
      ["adminID", ["SOAP::SOAPInt", XSD::QName.new(nil, "AdminID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")], [0, 1]],
      ["whatSites", ["ArrayOfstring", XSD::QName.new(nil, "WhatSites")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfDocPart,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "DocPart") }
  )

  EncodedRegistry.set(
    ArrayOfSimpleMemberStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "SimpleMemberStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCharSetStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "CharSetStruct") }
  )

  EncodedRegistry.set(
    ArrayOfKeyValueType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "KeyValueType") }
  )

  EncodedRegistry.set(
    ArrayOfListStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "ListStruct") }
  )

  EncodedRegistry.set(
    ArrayOfMailingStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "MailingStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSegmentStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "SegmentStruct") }
  )

  EncodedRegistry.set(
    ArrayOfint,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    ArrayOfTrackingSummaryStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "TrackingSummaryStruct") }
  )

  EncodedRegistry.set(
    ArrayOfArrayOfstring,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.lyris.com/lmapi", "ArrayOfstring") }
  )

  EncodedRegistry.set(
    ArrayOfMemberStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "MemberStruct") }
  )

  EncodedRegistry.set(
    ArrayOfTinyMemberStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "TinyMemberStruct") }
  )

  EncodedRegistry.set(
    ArrayOfMemberBanStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "MemberBanStruct") }
  )

  EncodedRegistry.set(
    ArrayOfstring,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfSimpleMailingStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "SimpleMailingStruct") }
  )

  EncodedRegistry.set(
    ArrayOfContentStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "ContentStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUrlTrackingStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsNs1Xsd, "UrlTrackingStruct") }
  )

  EncodedRegistry.register(
    :class => LicenseLevelEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "LicenseLevelEnum")
  )

  EncodedRegistry.register(
    :class => ListTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ListTypeEnum")
  )

  EncodedRegistry.register(
    :class => MriVisibilityEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MriVisibilityEnum")
  )

  EncodedRegistry.register(
    :class => MemberStatusEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberStatusEnum")
  )

  EncodedRegistry.register(
    :class => MessageTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MessageTypeEnum")
  )

  EncodedRegistry.register(
    :class => ModeratedEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ModeratedEnum")
  )

  EncodedRegistry.register(
    :class => ConferenceVisibilityEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConferenceVisibilityEnum")
  )

  EncodedRegistry.register(
    :class => ConferencePostEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConferencePostEnum")
  )

  EncodedRegistry.register(
    :class => ConferenceDurationEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConferenceDurationEnum")
  )

  EncodedRegistry.register(
    :class => ConfirmUnsubEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConfirmUnsubEnum")
  )

  EncodedRegistry.register(
    :class => PasswordRequiredEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "PasswordRequiredEnum")
  )

  EncodedRegistry.register(
    :class => MemberListSecurityEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberListSecurityEnum")
  )

  EncodedRegistry.register(
    :class => RecencyOperatorEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "RecencyOperatorEnum")
  )

  EncodedRegistry.register(
    :class => MemberKindEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberKindEnum")
  )

  EncodedRegistry.register(
    :class => NewSubscriberPolicyEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "NewSubscriberPolicyEnum")
  )

  EncodedRegistry.register(
    :class => BanLogicEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "BanLogicEnum")
  )

  EncodedRegistry.register(
    :class => PostPasswordEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "PostPasswordEnum")
  )

  EncodedRegistry.register(
    :class => NameRequiredEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "NameRequiredEnum")
  )

  EncodedRegistry.register(
    :class => ScriptingLevelEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ScriptingLevelEnum")
  )

  EncodedRegistry.register(
    :class => SegmentTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SegmentTypeEnum")
  )

  EncodedRegistry.register(
    :class => LoggingLevelEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "LoggingLevelEnum")
  )

  EncodedRegistry.register(
    :class => AddHeadersAndFootersEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "AddHeadersAndFootersEnum")
  )

  EncodedRegistry.register(
    :class => DocTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "DocTypeEnum")
  )

  EncodedRegistry.register(
    :class => EnableScriptingEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "EnableScriptingEnum")
  )

  EncodedRegistry.register(
    :class => RecencyWhichEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "RecencyWhichEnum")
  )

  EncodedRegistry.register(
    :class => MailFormatEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MailFormatEnum")
  )

  EncodedRegistry.register(
    :class => MailSectionEncodingEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MailSectionEncodingEnum")
  )

  EncodedRegistry.register(
    :class => FieldTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "FieldTypeEnum")
  )

  LiteralRegistry.register(
    :class => SimpleMailingStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SimpleMailingStruct"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "Subject")], [0, 1]],
      ["isHtmlSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsHtmlSectionEncoded")], [0, 1]],
      ["htmlSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "HtmlSectionEncoding")], [0, 1]],
      ["htmlMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "HtmlMessage")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "To")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]],
      ["isTextSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsTextSectionEncoded")], [0, 1]],
      ["textSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "TextSectionEncoding")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["textMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "TextMessage")], [0, 1]],
      ["attachments", ["SOAP::SOAPString", XSD::QName.new(nil, "Attachments")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "From")], [0, 1]],
      ["additionalHeaders", ["SOAP::SOAPString", XSD::QName.new(nil, "AdditionalHeaders")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MessageStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MessageStruct"),
    :schema_element => [
      ["recipientEmailsIn", ["ArrayOfstring", XSD::QName.new(nil, "RecipientEmailsIn")], [0, 1]],
      ["recipientMemberIDsIn", ["ArrayOfint", XSD::QName.new(nil, "RecipientMemberIDsIn")], [0, 1]],
      ["headersIn", ["ArrayOfKeyValueType", XSD::QName.new(nil, "HeadersIn")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "Body")], [0, 1]],
      ["segmentID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SegmentID")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DocPart,
    :schema_type => XSD::QName.new(NsNs1Xsd, "DocPart"),
    :schema_element => [
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "Body")], [0, 1]],
      ["mimePartName", ["SOAP::SOAPString", XSD::QName.new(nil, "MimePartName")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]],
      ["encoding", ["MailSectionEncodingEnum", XSD::QName.new(nil, "Encoding")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ContentStruct"),
    :schema_element => [
      ["headerTo", ["SOAP::SOAPString", XSD::QName.new(nil, "HeaderTo")], [0, 1]],
      ["isTemplate", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsTemplate")], [0, 1]],
      ["docType", ["DocTypeEnum", XSD::QName.new(nil, "DocType")], [0, 1]],
      ["contentID", ["SOAP::SOAPInt", XSD::QName.new(nil, "ContentID")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["nativeTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "NativeTitle")], [0, 1]],
      ["headerFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "HeaderFrom")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["isReadOnly", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsReadOnly")], [0, 1]],
      ["dateCreated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateCreated")], [0, 1]],
      ["docParts", ["ArrayOfDocPart", XSD::QName.new(nil, "DocParts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UrlTrackingStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "UrlTrackingStruct"),
    :schema_element => [
      ["uniqueOpens", ["SOAP::SOAPString", XSD::QName.new(nil, "UniqueOpens")], [0, 1]],
      ["opens", ["SOAP::SOAPString", XSD::QName.new(nil, "Opens")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MemberStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberStruct"),
    :schema_element => [
      ["additional", ["SOAP::SOAPString", XSD::QName.new(nil, "Additional")], [0, 1]],
      ["membershipKind", ["MemberKindEnum", XSD::QName.new(nil, "MembershipKind")], [0, 1]],
      ["approvalNeeded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ApprovalNeeded")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")], [0, 1]],
      ["notifyError", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NotifyError")], [0, 1]],
      ["expireDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ExpireDate")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "Comment")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(nil, "UserID")], [0, 1]],
      ["readsHtml", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReadsHtml")], [0, 1]],
      ["receiveAdminEmail", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveAdminEmail")], [0, 1]],
      ["mailFormat", ["MailFormatEnum", XSD::QName.new(nil, "MailFormat")], [0, 1]],
      ["dateConfirm", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateConfirm")], [0, 1]],
      ["numberOfBounces", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfBounces")], [0, 1]],
      ["numApprovalsNeeded", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumApprovalsNeeded")], [0, 1]],
      ["notifySubmission", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NotifySubmission")], [0, 1]],
      ["noRepro", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoRepro")], [0, 1]],
      ["memberID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MemberID")], [0, 1]],
      ["demographics", ["ArrayOfKeyValueType", XSD::QName.new(nil, "Demographics")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]],
      ["dateJoined", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateJoined")], [0, 1]],
      ["isListAdmin", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsListAdmin")], [0, 1]],
      ["receiveAcknowlegment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveAcknowlegment")], [0, 1]],
      ["dateBounce", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateBounce")], [0, 1]],
      ["dateHeld", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateHeld")], [0, 1]],
      ["memberStatus", ["MemberStatusEnum", XSD::QName.new(nil, "MemberStatus")], [0, 1]],
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")], [0, 1]],
      ["canApprovePending", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CanApprovePending")], [0, 1]],
      ["cleanAuto", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CleanAuto")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["dateUnsubscribed", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateUnsubscribed")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CharSetStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "CharSetStruct"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TinyMemberStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "TinyMemberStruct"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MailingStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MailingStruct"),
    :schema_element => [
      ["enableRecency", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "EnableRecency")], [0, 1]],
      ["isHtmlSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsHtmlSectionEncoded")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "Subject")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "Campaign")], [0, 1]],
      ["htmlSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "HtmlSectionEncoding")], [0, 1]],
      ["htmlMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "HtmlMessage")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "To")], [0, 1]],
      ["recencyWhich", ["RecencyWhichEnum", XSD::QName.new(nil, "RecencyWhich")], [0, 1]],
      ["resendAfterDays", ["SOAP::SOAPInt", XSD::QName.new(nil, "ResendAfterDays")], [0, 1]],
      ["sampleSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "SampleSize")], [0, 1]],
      ["charSetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "CharSetID")], [0, 1]],
      ["replyTo", ["SOAP::SOAPString", XSD::QName.new(nil, "ReplyTo")], [0, 1]],
      ["isTextSectionEncoded", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "IsTextSectionEncoded")], [0, 1]],
      ["textSectionEncoding", ["SOAP::SOAPInt", XSD::QName.new(nil, "TextSectionEncoding")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["textMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "TextMessage")], [0, 1]],
      ["trackOpens", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TrackOpens")], [0, 1]],
      ["recencyNumberOfMailings", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyNumberOfMailings")], [0, 1]],
      ["recencyDays", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyDays")], [0, 1]],
      ["bypassModeration", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "BypassModeration")], [0, 1]],
      ["attachments", ["SOAP::SOAPString", XSD::QName.new(nil, "Attachments")], [0, 1]],
      ["dontAttemptAfterDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DontAttemptAfterDate")], [0, 1]],
      ["rewriteDateWhenSent", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RewriteDateWhenSent")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "From")], [0, 1]],
      ["additionalHeaders", ["SOAP::SOAPString", XSD::QName.new(nil, "AdditionalHeaders")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["detectHtml", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DetectHtml")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SegmentStruct"),
    :schema_element => [
      ["segmentID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SegmentID")], [0, 1]],
      ["segmentName", ["SOAP::SOAPString", XSD::QName.new(nil, "SegmentName")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["segmentType", ["SegmentTypeEnum", XSD::QName.new(nil, "SegmentType")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["numTestRecords", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumTestRecords")], [0, 1]],
      ["clauseAdd", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseAdd")], [0, 1]],
      ["clauseWhere", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseWhere")], [0, 1]],
      ["clauseAfterSelect", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseAfterSelect")], [0, 1]],
      ["clauseFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseFrom")], [0, 1]],
      ["clauseOrderBy", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseOrderBy")], [0, 1]],
      ["clauseSelect", ["SOAP::SOAPString", XSD::QName.new(nil, "ClauseSelect")], [0, 1]],
      ["addWhereList", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddWhereList")], [0, 1]],
      ["addWhereMemberType", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddWhereMemberType")], [0, 1]],
      ["addWhereSubType", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddWhereSubType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TrackingSummaryStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "TrackingSummaryStruct"),
    :schema_element => [
      ["transientFailure", ["SOAP::SOAPInt", XSD::QName.new(nil, "TransientFailure")], [0, 1]],
      ["success", ["SOAP::SOAPInt", XSD::QName.new(nil, "Success")], [0, 1]],
      ["expired", ["SOAP::SOAPInt", XSD::QName.new(nil, "Expired")], [0, 1]],
      ["paused", ["SOAP::SOAPInt", XSD::QName.new(nil, "Paused")], [0, 1]],
      ["mailMergeSkipped", ["SOAP::SOAPInt", XSD::QName.new(nil, "MailMergeSkipped")], [0, 1]],
      ["active", ["SOAP::SOAPInt", XSD::QName.new(nil, "Active")], [0, 1]],
      ["opens", ["SOAP::SOAPInt", XSD::QName.new(nil, "Opens")], [0, 1]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "Created")], [0, 1]],
      ["notAttempted", ["SOAP::SOAPInt", XSD::QName.new(nil, "NotAttempted")], [0, 1]],
      ["clickthroughs", ["SOAP::SOAPInt", XSD::QName.new(nil, "Clickthroughs")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "Title")], [0, 1]],
      ["totalRecipients", ["SOAP::SOAPInt", XSD::QName.new(nil, "TotalRecipients")], [0, 1]],
      ["permanentFailure", ["SOAP::SOAPInt", XSD::QName.new(nil, "PermanentFailure")], [0, 1]],
      ["totalUndelivered", ["SOAP::SOAPInt", XSD::QName.new(nil, "TotalUndelivered")], [0, 1]],
      ["mailMergeAbort", ["SOAP::SOAPInt", XSD::QName.new(nil, "MailMergeAbort")], [0, 1]],
      ["uniqueOpens", ["SOAP::SOAPInt", XSD::QName.new(nil, "UniqueOpens")], [0, 1]],
      ["clickstreams", ["SOAP::SOAPInt", XSD::QName.new(nil, "Clickstreams")], [0, 1]],
      ["pending", ["SOAP::SOAPInt", XSD::QName.new(nil, "Pending")], [0, 1]],
      ["urls", ["ArrayOfUrlTrackingStruct", XSD::QName.new(nil, "Urls")], [0, 1]],
      ["mailingID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MailingID")], [0, 1]],
      ["v_retry", ["SOAP::SOAPInt", XSD::QName.new(nil, "Retry")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SimpleMemberStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SimpleMemberStruct"),
    :schema_element => [
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["memberID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MemberID")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => KeyValueType,
    :schema_type => XSD::QName.new(NsNs1Xsd, "KeyValueType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "Value")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ListStruct"),
    :schema_element => [
      ["sMTPHeaders", ["SOAP::SOAPString", XSD::QName.new(nil, "SMTPHeaders")], [0, 1]],
      ["errHold", ["SOAP::SOAPInt", XSD::QName.new(nil, "ErrHold")], [0, 1]],
      ["admin", ["SOAP::SOAPString", XSD::QName.new(nil, "Admin")], [0, 1]],
      ["maxMembers", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxMembers")], [0, 1]],
      ["referralsPerDay", ["SOAP::SOAPInt", XSD::QName.new(nil, "ReferralsPerDay")], [0, 1]],
      ["detectOpenByDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DetectOpenByDefault")], [0, 1]],
      ["subscribePassword", ["SOAP::SOAPString", XSD::QName.new(nil, "SubscribePassword")], [0, 1]],
      ["messageHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "MessageHeader")], [0, 1]],
      ["tclMergeInit", ["SOAP::SOAPString", XSD::QName.new(nil, "TclMergeInit")], [0, 1]],
      ["replyTo", ["SOAP::SOAPString", XSD::QName.new(nil, "ReplyTo")], [0, 1]],
      ["modifyHeaderDate", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ModifyHeaderDate")], [0, 1]],
      ["sponsOrgID", ["SOAP::SOAPString", XSD::QName.new(nil, "SponsOrgID")], [0, 1]],
      ["defaultTo", ["SOAP::SOAPString", XSD::QName.new(nil, "DefaultTo")], [0, 1]],
      ["runProgAfterSub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgAfterSub")], [0, 1]],
      ["noListHeader", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoListHeader")], [0, 1]],
      ["archiveNum", ["SOAP::SOAPInt", XSD::QName.new(nil, "ArchiveNum")], [0, 1]],
      ["confirmSubscribes", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ConfirmSubscribes")], [0, 1]],
      ["allowInfo", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AllowInfo")], [0, 1]],
      ["simpleSub", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SimpleSub")], [0, 1]],
      ["memberListSecurity", ["MemberListSecurityEnum", XSD::QName.new(nil, "MemberListSecurity")], [0, 1]],
      ["runProgAfterUnsub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgAfterUnsub")], [0, 1]],
      ["runProgBeforePosting", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgBeforePosting")], [0, 1]],
      ["passwordRequired", ["PasswordRequiredEnum", XSD::QName.new(nil, "PasswordRequired")], [0, 1]],
      ["onlyAllowAdminSend", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OnlyAllowAdminSend")], [0, 1]],
      ["noEmail", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoEmail")], [0, 1]],
      ["approveNum", ["SOAP::SOAPInt", XSD::QName.new(nil, "ApproveNum")], [0, 1]],
      ["recencySequentialEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencySequentialEnabled")], [0, 1]],
      ["headerRemove", ["SOAP::SOAPString", XSD::QName.new(nil, "HeaderRemove")], [0, 1]],
      ["recencyTriggeredEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencyTriggeredEnabled")], [0, 1]],
      ["purgeExpiredInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeExpiredInterval")], [0, 1]],
      ["runProgBeforeSub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgBeforeSub")], [0, 1]],
      ["nameRequired", ["NameRequiredEnum", XSD::QName.new(nil, "NameRequired")], [0, 1]],
      ["descLongDocID", ["SOAP::SOAPString", XSD::QName.new(nil, "DescLongDocID")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "Comment")], [0, 1]],
      ["commentsID", ["SOAP::SOAPString", XSD::QName.new(nil, "CommentsID")], [0, 1]],
      ["purgeHeldInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeHeldInterval")], [0, 1]],
      ["purgeUnsubInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeUnsubInterval")], [0, 1]],
      ["dateCreated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateCreated")], [0, 1]],
      ["autoReleaseHour", ["SOAP::SOAPInt", XSD::QName.new(nil, "AutoReleaseHour")], [0, 1]],
      ["disabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Disabled")], [0, 1]],
      ["digestHeader", ["SOAP::SOAPString", XSD::QName.new(nil, "DigestHeader")], [0, 1]],
      ["recencyWebEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencyWebEnabled")], [0, 1]],
      ["dontRewriteMessageIDHeader", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DontRewriteMessageIDHeader")], [0, 1]],
      ["addHeadersAndFooters", ["AddHeadersAndFootersEnum", XSD::QName.new(nil, "AddHeadersAndFooters")], [0, 1]],
      ["visitors", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Visitors")], [0, 1]],
      ["noSearch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoSearch")], [0, 1]],
      ["subscriptionReports", ["ArrayOfstring", XSD::QName.new(nil, "SubscriptionReports")], [0, 1]],
      ["noNNTP", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoNNTP")], [0, 1]],
      ["maxMessageSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxMessageSize")], [0, 1]],
      ["purgeReferredInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeReferredInterval")], [0, 1]],
      ["makePostsAnonymous", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "MakePostsAnonymous")], [0, 1]],
      ["keywords", ["SOAP::SOAPString", XSD::QName.new(nil, "Keywords")], [0, 1]],
      ["additional", ["SOAP::SOAPString", XSD::QName.new(nil, "Additional")], [0, 1]],
      ["addListNameToSubject", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AddListNameToSubject")], [0, 1]],
      ["recipientLoggingLevel", ["LoggingLevelEnum", XSD::QName.new(nil, "RecipientLoggingLevel")], [0, 1]],
      ["enableScripting", ["EnableScriptingEnum", XSD::QName.new(nil, "EnableScripting")], [0, 1]],
      ["to", ["SOAP::SOAPString", XSD::QName.new(nil, "To")], [0, 1]],
      ["topic", ["SOAP::SOAPString", XSD::QName.new(nil, "Topic")], [0, 1]],
      ["runProgAfterPosting", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgAfterPosting")], [0, 1]],
      ["cleanNotif", ["SOAP::SOAPInt", XSD::QName.new(nil, "CleanNotif")], [0, 1]],
      ["deliveryReports", ["ArrayOfstring", XSD::QName.new(nil, "DeliveryReports")], [0, 1]],
      ["recencyMailCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyMailCount")], [0, 1]],
      ["runProgBeforeUnsub", ["SOAP::SOAPString", XSD::QName.new(nil, "RunProgBeforeUnsub")], [0, 1]],
      ["moderated", ["ModeratedEnum", XSD::QName.new(nil, "Moderated")], [0, 1]],
      ["allowCrossPosting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AllowCrossPosting")], [0, 1]],
      ["maxPostsPerUser", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxPostsPerUser")], [0, 1]],
      ["confirmUnsubscribes", ["ConfirmUnsubEnum", XSD::QName.new(nil, "ConfirmUnsubscribes")], [0, 1]],
      ["noArchive", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoArchive")], [0, 1]],
      ["recencyDayCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "RecencyDayCount")], [0, 1]],
      ["purgeUnconfirmedInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeUnconfirmedInterval")], [0, 1]],
      ["removeDuplicateCrossPostings", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RemoveDuplicateCrossPostings")], [0, 1]],
      ["archiveDays", ["SOAP::SOAPInt", XSD::QName.new(nil, "ArchiveDays")], [0, 1]],
      ["notifyHeldInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "NotifyHeldInterval")], [0, 1]],
      ["trackAllUrls", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TrackAllUrls")], [0, 1]],
      ["purgeUnapprovedInterval", ["SOAP::SOAPInt", XSD::QName.new(nil, "PurgeUnapprovedInterval")], [0, 1]],
      ["messageFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "MessageFooter")], [0, 1]],
      ["recencyOperator", ["RecencyOperatorEnum", XSD::QName.new(nil, "RecencyOperator")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["maxQuoting", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxQuoting")], [0, 1]],
      ["defaultSubject", ["SOAP::SOAPString", XSD::QName.new(nil, "DefaultSubject")], [0, 1]],
      ["releasePending", ["SOAP::SOAPInt", XSD::QName.new(nil, "ReleasePending")], [0, 1]],
      ["keepOutmailPostings", ["SOAP::SOAPInt", XSD::QName.new(nil, "KeepOutmailPostings")], [0, 1]],
      ["privApprov", ["SOAP::SOAPString", XSD::QName.new(nil, "PrivApprov")], [0, 1]],
      ["postPassword", ["PostPasswordEnum", XSD::QName.new(nil, "PostPassword")], [0, 1]],
      ["defaultFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "DefaultFrom")], [0, 1]],
      ["anyoneCanPost", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AnyoneCanPost")], [0, 1]],
      ["scriptingLevel", ["ScriptingLevelEnum", XSD::QName.new(nil, "ScriptingLevel")], [0, 1]],
      ["child", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Child")], [0, 1]],
      ["shortDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ShortDescription")], [0, 1]],
      ["noEmailSubscriptions", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoEmailSubscriptions")], [0, 1]],
      ["detectHtmlByDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DetectHtmlByDefault")], [0, 1]],
      ["sMTPFrom", ["SOAP::SOAPString", XSD::QName.new(nil, "SMTPFrom")], [0, 1]],
      ["mriVisibility", ["MriVisibilityEnum", XSD::QName.new(nil, "MriVisibility")], [0, 1]],
      ["listID", ["SOAP::SOAPInt", XSD::QName.new(nil, "ListID")], [0, 1]],
      ["blankSubjectOk", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "BlankSubjectOk")], [0, 1]],
      ["allowDuplicatePosts", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AllowDuplicatePosts")], [0, 1]],
      ["recencyEmailEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RecencyEmailEnabled")], [0, 1]],
      ["mergeCapOverride", ["ScriptingLevelEnum", XSD::QName.new(nil, "MergeCapOverride")], [0, 1]],
      ["cleanAuto", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CleanAuto")], [0, 1]],
      ["from", ["SOAP::SOAPString", XSD::QName.new(nil, "From")], [0, 1]],
      ["noBodyOk", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NoBodyOk")], [0, 1]],
      ["newSubscriberSecurity", ["NewSubscriberPolicyEnum", XSD::QName.new(nil, "NewSubscriberSecurity")], [0, 1]],
      ["maxMessNum", ["SOAP::SOAPInt", XSD::QName.new(nil, "MaxMessNum")], [0, 1]],
      ["digestFooter", ["SOAP::SOAPString", XSD::QName.new(nil, "DigestFooter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MemberBanStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberBanStruct"),
    :schema_element => [
      ["domain", ["SOAP::SOAPString", XSD::QName.new(nil, "Domain")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(nil, "UserName")], [0, 1]],
      ["listName", ["SOAP::SOAPString", XSD::QName.new(nil, "ListName")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["banLogic", ["BanLogicEnum", XSD::QName.new(nil, "BanLogic")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TopicStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "TopicStruct"),
    :schema_element => [
      ["topicName", ["SOAP::SOAPString", XSD::QName.new(nil, "TopicName")], [0, 1]],
      ["topicDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "TopicDescription")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["hiddenTopic", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "HiddenTopic")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SiteStruct"),
    :schema_element => [
      ["siteID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SiteID")], [0, 1]],
      ["siteName", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteName")], [0, 1]],
      ["siteDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "SiteDescription")], [0, 1]],
      ["hostName", ["SOAP::SOAPString", XSD::QName.new(nil, "HostName")], [0, 1]],
      ["webInterfaceURL", ["SOAP::SOAPString", XSD::QName.new(nil, "WebInterfaceURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PreviewStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "PreviewStruct"),
    :schema_element => [
      ["textToMerge", ["SOAP::SOAPString", XSD::QName.new(nil, "TextToMerge")], [0, 1]],
      ["memberID", ["SOAP::SOAPInt", XSD::QName.new(nil, "MemberID")], [0, 1]],
      ["subsetID", ["SOAP::SOAPInt", XSD::QName.new(nil, "SubsetID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServerAdminStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ServerAdminStruct"),
    :schema_element => [
      ["adminID", ["SOAP::SOAPInt", XSD::QName.new(nil, "AdminID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteAdminStruct,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SiteAdminStruct"),
    :schema_element => [
      ["adminID", ["SOAP::SOAPInt", XSD::QName.new(nil, "AdminID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailAddress")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(nil, "Password")], [0, 1]],
      ["whatSites", ["ArrayOfstring", XSD::QName.new(nil, "WhatSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LicenseLevelEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "LicenseLevelEnum")
  )

  LiteralRegistry.register(
    :class => ListTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ListTypeEnum")
  )

  LiteralRegistry.register(
    :class => MriVisibilityEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MriVisibilityEnum")
  )

  LiteralRegistry.register(
    :class => MemberStatusEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberStatusEnum")
  )

  LiteralRegistry.register(
    :class => MessageTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MessageTypeEnum")
  )

  LiteralRegistry.register(
    :class => ModeratedEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ModeratedEnum")
  )

  LiteralRegistry.register(
    :class => ConferenceVisibilityEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConferenceVisibilityEnum")
  )

  LiteralRegistry.register(
    :class => ConferencePostEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConferencePostEnum")
  )

  LiteralRegistry.register(
    :class => ConferenceDurationEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConferenceDurationEnum")
  )

  LiteralRegistry.register(
    :class => ConfirmUnsubEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ConfirmUnsubEnum")
  )

  LiteralRegistry.register(
    :class => PasswordRequiredEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "PasswordRequiredEnum")
  )

  LiteralRegistry.register(
    :class => MemberListSecurityEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberListSecurityEnum")
  )

  LiteralRegistry.register(
    :class => RecencyOperatorEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "RecencyOperatorEnum")
  )

  LiteralRegistry.register(
    :class => MemberKindEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MemberKindEnum")
  )

  LiteralRegistry.register(
    :class => NewSubscriberPolicyEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "NewSubscriberPolicyEnum")
  )

  LiteralRegistry.register(
    :class => BanLogicEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "BanLogicEnum")
  )

  LiteralRegistry.register(
    :class => PostPasswordEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "PostPasswordEnum")
  )

  LiteralRegistry.register(
    :class => NameRequiredEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "NameRequiredEnum")
  )

  LiteralRegistry.register(
    :class => ScriptingLevelEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "ScriptingLevelEnum")
  )

  LiteralRegistry.register(
    :class => SegmentTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "SegmentTypeEnum")
  )

  LiteralRegistry.register(
    :class => LoggingLevelEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "LoggingLevelEnum")
  )

  LiteralRegistry.register(
    :class => AddHeadersAndFootersEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "AddHeadersAndFootersEnum")
  )

  LiteralRegistry.register(
    :class => DocTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "DocTypeEnum")
  )

  LiteralRegistry.register(
    :class => EnableScriptingEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "EnableScriptingEnum")
  )

  LiteralRegistry.register(
    :class => RecencyWhichEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "RecencyWhichEnum")
  )

  LiteralRegistry.register(
    :class => MailFormatEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MailFormatEnum")
  )

  LiteralRegistry.register(
    :class => MailSectionEncodingEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "MailSectionEncodingEnum")
  )

  LiteralRegistry.register(
    :class => FieldTypeEnum,
    :schema_type => XSD::QName.new(NsNs1Xsd, "FieldTypeEnum")
  )
end
