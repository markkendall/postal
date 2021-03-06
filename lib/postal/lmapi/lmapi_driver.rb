# Main class used by client programs

# require File.expand_path('lib/postal/lmapi/lmapi.rb')
# require File.expand_path('lib/postal/lmapi/lmapiMappingRegistry.rb')
gem 'soap4r'
require 'soap/rpc/driver'

module Postal
  module Lmapi
    class Soap < ::SOAP::RPC::Driver
      DefaultEndpointUrl = "http://mail.active.com:82/"
      NsLmapi = "http://www.lyris.com/lmapi"

      Methods = [
        [ XSD::QName.new(NsLmapi, "ApiVersion"),
          "",
          "apiVersion",
          [ ["retval", "return", ["::SOAP::SOAPString"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CurrentUserEmailAddress"),
          "",
          "currentUserEmailAddress",
          [ ["retval", "return", ["::SOAP::SOAPString"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteMembers"),
          "",
          "deleteMembers",
          [ ["in", "FilterCriteriaArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "GetMemberID"),
          "",
          "getMemberID",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateSingleMember"),
          "",
          "createSingleMember",
          [ ["in", "EmailAddress", ["::SOAP::SOAPString"]],
            ["in", "FullName", ["::SOAP::SOAPString"]],
            ["in", "ListName", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateManyMembers"),
          "",
          "createManyMembers",
          [ ["in", "ArrayOfTinyMemberStructIn", ["ArrayOfTinyMemberStruct", "http://www.lyris.com/lmapi", "ArrayOfTinyMemberStruct"]],
            ["in", "ListName", ["::SOAP::SOAPString"]],
            ["in", "SkipBadRecords", ["::SOAP::SOAPBoolean"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SqlSelect"),
          "",
          "sqlSelect",
          [ ["in", "SqlStatement", ["::SOAP::SOAPString"]],
            ["retval", "return", ["ArrayOfArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfArrayOfstring"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SqlInsert"),
          "",
          "sqlInsert",
          [ ["in", "SqlStatement", ["::SOAP::SOAPString"]],
            ["in", "DataArray", ["ArrayOfKeyValueType", "http://www.lyris.com/lmapi", "ArrayOfKeyValueType"]],
            ["in", "ReturnID", ["::SOAP::SOAPBoolean"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SqlUpdate"),
          "",
          "sqlUpdate",
          [ ["in", "SqlStatement", ["::SOAP::SOAPString"]],
            ["in", "DataArray", ["ArrayOfKeyValueType", "http://www.lyris.com/lmapi", "ArrayOfKeyValueType"]],
            ["in", "SqlWhere", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SqlDelete"),
          "",
          "sqlDelete",
          [ ["in", "TableName", ["::SOAP::SOAPString"]],
            ["in", "SqlWhere", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateMemberPassword"),
          "",
          "updateMemberPassword",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "Password", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CheckMemberPassword"),
          "",
          "checkMemberPassword",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "Password", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CopyMember"),
          "",
          "copyMember",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "EmailAddress", ["::SOAP::SOAPString"]],
            ["in", "FullName", ["::SOAP::SOAPString"]],
            ["in", "ListName", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateList"),
          "",
          "createList",
          [ ["in", "ListTypeEnumIn", [nil, "http://tempuri.org/ns1.xsd", "ListTypeEnum"]],
            ["in", "ListName", ["::SOAP::SOAPString"]],
            ["in", "ShortDescription", ["::SOAP::SOAPString"]],
            ["in", "AdminName", ["::SOAP::SOAPString"]],
            ["in", "AdminEmail", ["::SOAP::SOAPString"]],
            ["in", "AdminPassword", ["::SOAP::SOAPString"]],
            ["in", "Topic", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteList"),
          "",
          "deleteList",
          [ ["in", "ListName", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "EmailOnWhatLists"),
          "",
          "emailOnWhatLists",
          [ ["in", "EmailAddress", ["::SOAP::SOAPString"]],
            ["retval", "return", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "EmailPasswordOnWhatLists"),
          "",
          "emailPasswordOnWhatLists",
          [ ["in", "EmailAddress", ["::SOAP::SOAPString"]],
            ["in", "Password", ["::SOAP::SOAPString"]],
            ["retval", "return", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateListAdmin"),
          "",
          "createListAdmin",
          [ ["in", "AdminEmail", ["::SOAP::SOAPString"]],
            ["in", "AdminPassword", ["::SOAP::SOAPString"]],
            ["in", "AdminListName", ["::SOAP::SOAPString"]],
            ["in", "AdminFullName", ["::SOAP::SOAPString"]],
            ["in", "ReceiveListAdminMail", ["::SOAP::SOAPBoolean"]],
            ["in", "ReceiveModerationNotification", ["::SOAP::SOAPBoolean"]],
            ["in", "BypassListModeration", ["::SOAP::SOAPBoolean"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateMemberBan"),
          "",
          "createMemberBan",
          [ ["in", "MemberBanStructIn", ["MemberBanStruct", "http://tempuri.org/ns1.xsd", "MemberBanStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "GetEmailFromMemberID"),
          "",
          "getEmailFromMemberID",
          [ ["in", "MemberID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["::SOAP::SOAPString"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "GetListID"),
          "",
          "getListID",
          [ ["in", "ListName", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "GetListnameFromMemberID"),
          "",
          "getListnameFromMemberID",
          [ ["in", "MemberID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["::SOAP::SOAPString"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "ImportContent"),
          "",
          "importContent",
          [ ["in", "ContentID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["SimpleMailingStruct", "http://tempuri.org/ns1.xsd", "SimpleMailingStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectMembers"),
          "",
          "selectMembers",
          [ ["in", "FilterCriteriaArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["ArrayOfMemberStruct", "http://www.lyris.com/lmapi", "ArrayOfMemberStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectSimpleMembers"),
          "",
          "selectSimpleMembers",
          [ ["in", "FilterCriteriaArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["ArrayOfSimpleMemberStruct", "http://www.lyris.com/lmapi", "ArrayOfSimpleMemberStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SendMailing"),
          "",
          "sendMailing",
          [ ["in", "SegmentID", ["::SOAP::SOAPInt"]],
            ["in", "MailingStructIn", ["MailingStruct", "http://tempuri.org/ns1.xsd", "MailingStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "MailingStatus"),
          "",
          "mailingStatus",
          [ ["in", "MailingID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["::SOAP::SOAPString"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "ScheduleMailing"),
          "",
          "scheduleMailing",
          [ ["in", "SegmentID", ["::SOAP::SOAPInt"]],
            ["in", "SendDate", ["::SOAP::SOAPDateTime"]],
            ["in", "MailingStructIn", ["MailingStruct", "http://tempuri.org/ns1.xsd", "MailingStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "ModerateMailing"),
          "",
          "moderateMailing",
          [ ["in", "ModerateID", ["::SOAP::SOAPInt"]],
            ["in", "Accept", ["::SOAP::SOAPBoolean"]],
            ["in", "SendRejectMessage", ["::SOAP::SOAPBoolean"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectContent"),
          "",
          "selectContent",
          [ ["in", "FilterCriteriaArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["ArrayOfContentStruct", "http://www.lyris.com/lmapi", "ArrayOfContentStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectLists"),
          "",
          "selectLists",
          [ ["in", "ListName", ["::SOAP::SOAPString"]],
            ["in", "SiteName", ["::SOAP::SOAPString"]],
            ["retval", "return", ["ArrayOfListStruct", "http://www.lyris.com/lmapi", "ArrayOfListStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectSegments"),
          "",
          "selectSegments",
          [ ["in", "FilterCriteriaArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["ArrayOfSegmentStruct", "http://www.lyris.com/lmapi", "ArrayOfSegmentStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SendMailingDirect"),
          "",
          "sendMailingDirect",
          [ ["in", "EmailAddressArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["in", "MemberIDArray", ["ArrayOfint", "http://www.lyris.com/lmapi", "ArrayOfint"]],
            ["in", "MailingStructIn", ["MailingStruct", "http://tempuri.org/ns1.xsd", "MailingStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SendMemberDoc"),
          "",
          "sendMemberDoc",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "DocTypeIn", [nil, "http://tempuri.org/ns1.xsd", "MessageTypeEnum"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "TrackingSummary"),
          "",
          "trackingSummary",
          [ ["in", "OutMailID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["TrackingSummaryStruct", "http://tempuri.org/ns1.xsd", "TrackingSummaryStruct"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "Unsubscribe"),
          "",
          "unsubscribe",
          [ ["in", "SimpleMemberStructArrayIn", ["ArrayOfSimpleMemberStruct", "http://www.lyris.com/lmapi", "ArrayOfSimpleMemberStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateMemberEmail"),
          "",
          "updateMemberEmail",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "EmailAddress", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateMemberKind"),
          "",
          "updateMemberKind",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "MemberKind", [nil, "http://tempuri.org/ns1.xsd", "MemberKindEnum"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateMemberStatus"),
          "",
          "updateMemberStatus",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "MemberStatus", [nil, "http://tempuri.org/ns1.xsd", "MemberStatusEnum"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateList"),
          "",
          "updateList",
          [ ["in", "ListStructIn", ["ListStruct", "http://tempuri.org/ns1.xsd", "ListStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateListAdmin"),
          "",
          "updateListAdmin",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "IsListAdmin", ["::SOAP::SOAPBoolean"]],
            ["in", "ReceiveListAdminMail", ["::SOAP::SOAPBoolean"]],
            ["in", "ReceiveModerationNotification", ["::SOAP::SOAPBoolean"]],
            ["in", "BypassListModeration", ["::SOAP::SOAPBoolean"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateMemberDemographics"),
          "",
          "updateMemberDemographics",
          [ ["in", "SimpleMemberStructIn", ["SimpleMemberStruct", "http://tempuri.org/ns1.xsd", "SimpleMemberStruct"]],
            ["in", "DemographicsArray", ["ArrayOfKeyValueType", "http://www.lyris.com/lmapi", "ArrayOfKeyValueType"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateMemberColumn"),
          "",
          "createMemberColumn",
          [ ["in", "FieldName", ["::SOAP::SOAPString"]],
            ["in", "FieldType", [nil, "http://tempuri.org/ns1.xsd", "FieldTypeEnum"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteMemberColumn"),
          "",
          "deleteMemberColumn",
          [ ["in", "FieldName", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateSegment"),
          "",
          "createSegment",
          [ ["in", "SegmentStructIn", ["SegmentStruct", "http://tempuri.org/ns1.xsd", "SegmentStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateSegment"),
          "",
          "updateSegment",
          [ ["in", "SegmentStructIn", ["SegmentStruct", "http://tempuri.org/ns1.xsd", "SegmentStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteSegment"),
          "",
          "deleteSegment",
          [ ["in", "SegmentID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SendMessage"),
          "",
          "sendMessage",
          [ ["in", "MessageStructIn", ["MessageStruct", "http://tempuri.org/ns1.xsd", "MessageStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateSite"),
          "",
          "createSite",
          [ ["in", "SiteStructIn", ["SiteStruct", "http://tempuri.org/ns1.xsd", "SiteStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateSite"),
          "",
          "updateSite",
          [ ["in", "SiteStructIn", ["SiteStruct", "http://tempuri.org/ns1.xsd", "SiteStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteSite"),
          "",
          "deleteSite",
          [ ["in", "SiteID", ["::SOAP::SOAPInt"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateTopic"),
          "",
          "createTopic",
          [ ["in", "TopicStructIn", ["TopicStruct", "http://tempuri.org/ns1.xsd", "TopicStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateTopic"),
          "",
          "updateTopic",
          [ ["in", "TopicStructIn", ["TopicStruct", "http://tempuri.org/ns1.xsd", "TopicStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteTopic"),
          "",
          "deleteTopic",
          [ ["in", "TopicTitle", ["::SOAP::SOAPString"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "GetPreviewMailing"),
          "",
          "getPreviewMailing",
          [ ["in", "PreviewStructIn", ["PreviewStruct", "http://tempuri.org/ns1.xsd", "PreviewStruct"]],
            ["retval", "return", ["::SOAP::SOAPString"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateServerAdmin"),
          "",
          "createServerAdmin",
          [ ["in", "ServerAdminStructIn", ["ServerAdminStruct", "http://tempuri.org/ns1.xsd", "ServerAdminStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateServerAdmin"),
          "",
          "updateServerAdmin",
          [ ["in", "ServerAdminStructIn", ["ServerAdminStruct", "http://tempuri.org/ns1.xsd", "ServerAdminStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteServerAdmin"),
          "",
          "deleteServerAdmin",
          [ ["in", "ServerAdminStructIn", ["ServerAdminStruct", "http://tempuri.org/ns1.xsd", "ServerAdminStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateSiteAdmin"),
          "",
          "createSiteAdmin",
          [ ["in", "SiteAdminStructIn", ["SiteAdminStruct", "http://tempuri.org/ns1.xsd", "SiteAdminStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateSiteAdmin"),
          "",
          "updateSiteAdmin",
          [ ["in", "SiteAdminStructIn", ["SiteAdminStruct", "http://tempuri.org/ns1.xsd", "SiteAdminStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteSiteAdmin"),
          "",
          "deleteSiteAdmin",
          [ ["in", "SiteAdminStructIn", ["SiteAdminStruct", "http://tempuri.org/ns1.xsd", "SiteAdminStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "CreateContent"),
          "",
          "createContent",
          [ ["in", "ContentStructIn", ["ContentStruct", "http://tempuri.org/ns1.xsd", "ContentStruct"]],
            ["retval", "return", ["::SOAP::SOAPInt"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "UpdateContent"),
          "",
          "updateContent",
          [ ["in", "ContentStructIn", ["ContentStruct", "http://tempuri.org/ns1.xsd", "ContentStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "DeleteContent"),
          "",
          "deleteContent",
          [ ["in", "ContentStructIn", ["ContentStruct", "http://tempuri.org/ns1.xsd", "ContentStruct"]],
            ["retval", "return", ["::SOAP::SOAPBoolean"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectListsEx"),
          "",
          "selectListsEx",
          [ ["in", "ListName", ["::SOAP::SOAPString"]],
            ["in", "SiteName", ["::SOAP::SOAPString"]],
            ["in", "FieldsToFetch", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["in", "WhereClause", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["ArrayOfArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfArrayOfstring"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ],
        [ XSD::QName.new(NsLmapi, "SelectMembersEx"),
          "",
          "selectMembersEx",
          [ ["in", "FieldsToFetch", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["in", "FilterCriteriaArray", ["ArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfstring"]],
            ["retval", "return", ["ArrayOfArrayOfstring", "http://www.lyris.com/lmapi", "ArrayOfArrayOfstring"]] ],
          { :request_style =>  :rpc, :request_use =>  :encoded,
            :response_style => :rpc, :response_use => :encoded,
            :faults => {} }
        ]
      ]

      def initialize(endpoint_url = nil)
        endpoint_url ||= DefaultEndpointUrl
        super(endpoint_url, nil)
        self.mapping_registry = MappingRegistry::EncodedRegistry
        self.literal_mapping_registry = MappingRegistry::LiteralRegistry
        init_methods
      end

    private

      def init_methods
        Methods.each do |definitions|
          opt = definitions.last
          if opt[:request_style] == :document
            add_document_operation(*definitions)
          else
            add_rpc_operation(*definitions)
            qname = definitions[0]
            name = definitions[2]
            if qname.name != name and qname.name.capitalize == name.capitalize
              ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
                __send__(name, *arg)
              end
            end
          end
        end
      end
    end
  end
end
