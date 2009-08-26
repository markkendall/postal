#!/usr/bin/env ruby

# Sample client

# require 'lmapiDriver.rb'

endpoint_url = ARGV.shift
obj = LmapiSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ApiVersion
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.apiVersion

# SYNOPSIS
#   CurrentUserEmailAddress
#
# ARGS
#   N/A
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#

puts obj.currentUserEmailAddress

# SYNOPSIS
#   DeleteMembers(filterCriteriaArray)
#
# ARGS
#   filterCriteriaArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
filterCriteriaArray = nil
puts obj.deleteMembers(filterCriteriaArray)

# SYNOPSIS
#   GetMemberID(simpleMemberStructIn)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
simpleMemberStructIn = nil
puts obj.getMemberID(simpleMemberStructIn)

# SYNOPSIS
#   CreateSingleMember(emailAddress, fullName, listName)
#
# ARGS
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   fullName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
emailAddress = fullName = listName = nil
puts obj.createSingleMember(emailAddress, fullName, listName)

# SYNOPSIS
#   CreateManyMembers(arrayOfTinyMemberStructIn, listName, skipBadRecords)
#
# ARGS
#   arrayOfTinyMemberStructIn ArrayOfTinyMemberStruct - {http://www.lyris.com/lmapi}ArrayOfTinyMemberStruct
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   skipBadRecords  Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
arrayOfTinyMemberStructIn = listName = skipBadRecords = nil
puts obj.createManyMembers(arrayOfTinyMemberStructIn, listName, skipBadRecords)

# SYNOPSIS
#   SqlSelect(sqlStatement)
#
# ARGS
#   sqlStatement    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfArrayOfstring
#
sqlStatement = nil
puts obj.sqlSelect(sqlStatement)

# SYNOPSIS
#   SqlInsert(sqlStatement, dataArray, returnID)
#
# ARGS
#   sqlStatement    C_String - {http://www.w3.org/2001/XMLSchema}string
#   dataArray       ArrayOfKeyValueType - {http://www.lyris.com/lmapi}ArrayOfKeyValueType
#   returnID        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
sqlStatement = dataArray = returnID = nil
puts obj.sqlInsert(sqlStatement, dataArray, returnID)

# SYNOPSIS
#   SqlUpdate(sqlStatement, dataArray, sqlWhere)
#
# ARGS
#   sqlStatement    C_String - {http://www.w3.org/2001/XMLSchema}string
#   dataArray       ArrayOfKeyValueType - {http://www.lyris.com/lmapi}ArrayOfKeyValueType
#   sqlWhere        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
sqlStatement = dataArray = sqlWhere = nil
puts obj.sqlUpdate(sqlStatement, dataArray, sqlWhere)

# SYNOPSIS
#   SqlDelete(tableName, sqlWhere)
#
# ARGS
#   tableName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   sqlWhere        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
tableName = sqlWhere = nil
puts obj.sqlDelete(tableName, sqlWhere)

# SYNOPSIS
#   UpdateMemberPassword(simpleMemberStructIn, password)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = password = nil
puts obj.updateMemberPassword(simpleMemberStructIn, password)

# SYNOPSIS
#   CheckMemberPassword(simpleMemberStructIn, password)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = password = nil
puts obj.checkMemberPassword(simpleMemberStructIn, password)

# SYNOPSIS
#   CopyMember(simpleMemberStructIn, emailAddress, fullName, listName)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   fullName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
simpleMemberStructIn = emailAddress = fullName = listName = nil
puts obj.copyMember(simpleMemberStructIn, emailAddress, fullName, listName)

# SYNOPSIS
#   CreateList(listTypeEnumIn, listName, shortDescription, adminName, adminEmail, adminPassword, topic)
#
# ARGS
#   listTypeEnumIn  ListTypeEnum - {http://tempuri.org/ns1.xsd}ListTypeEnum
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   shortDescription C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminEmail      C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminPassword   C_String - {http://www.w3.org/2001/XMLSchema}string
#   topic           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
listTypeEnumIn = listName = shortDescription = adminName = adminEmail = adminPassword = topic = nil
puts obj.createList(listTypeEnumIn, listName, shortDescription, adminName, adminEmail, adminPassword, topic)

# SYNOPSIS
#   DeleteList(listName)
#
# ARGS
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
listName = nil
puts obj.deleteList(listName)

# SYNOPSIS
#   EmailOnWhatLists(emailAddress)
#
# ARGS
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
emailAddress = nil
puts obj.emailOnWhatLists(emailAddress)

# SYNOPSIS
#   EmailPasswordOnWhatLists(emailAddress, password)
#
# ARGS
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
emailAddress = password = nil
puts obj.emailPasswordOnWhatLists(emailAddress, password)

# SYNOPSIS
#   CreateListAdmin(adminEmail, adminPassword, adminListName, adminFullName, receiveListAdminMail, receiveModerationNotification, bypassListModeration)
#
# ARGS
#   adminEmail      C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminPassword   C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminListName   C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminFullName   C_String - {http://www.w3.org/2001/XMLSchema}string
#   receiveListAdminMail Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   receiveModerationNotification Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   bypassListModeration Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
adminEmail = adminPassword = adminListName = adminFullName = receiveListAdminMail = receiveModerationNotification = bypassListModeration = nil
puts obj.createListAdmin(adminEmail, adminPassword, adminListName, adminFullName, receiveListAdminMail, receiveModerationNotification, bypassListModeration)

# SYNOPSIS
#   CreateMemberBan(memberBanStructIn)
#
# ARGS
#   memberBanStructIn MemberBanStruct - {http://tempuri.org/ns1.xsd}MemberBanStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
memberBanStructIn = nil
puts obj.createMemberBan(memberBanStructIn)

# SYNOPSIS
#   GetEmailFromMemberID(memberID)
#
# ARGS
#   memberID        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
memberID = nil
puts obj.getEmailFromMemberID(memberID)

# SYNOPSIS
#   GetListID(listName)
#
# ARGS
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
listName = nil
puts obj.getListID(listName)

# SYNOPSIS
#   GetListnameFromMemberID(memberID)
#
# ARGS
#   memberID        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
memberID = nil
puts obj.getListnameFromMemberID(memberID)

# SYNOPSIS
#   ImportContent(contentID)
#
# ARGS
#   contentID       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        SimpleMailingStruct - {http://tempuri.org/ns1.xsd}SimpleMailingStruct
#
contentID = nil
puts obj.importContent(contentID)

# SYNOPSIS
#   SelectMembers(filterCriteriaArray)
#
# ARGS
#   filterCriteriaArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        ArrayOfMemberStruct - {http://www.lyris.com/lmapi}ArrayOfMemberStruct
#
filterCriteriaArray = nil
puts obj.selectMembers(filterCriteriaArray)

# SYNOPSIS
#   SelectSimpleMembers(filterCriteriaArray)
#
# ARGS
#   filterCriteriaArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        ArrayOfSimpleMemberStruct - {http://www.lyris.com/lmapi}ArrayOfSimpleMemberStruct
#
filterCriteriaArray = nil
puts obj.selectSimpleMembers(filterCriteriaArray)

# SYNOPSIS
#   SendMailing(segmentID, mailingStructIn)
#
# ARGS
#   segmentID       Int - {http://www.w3.org/2001/XMLSchema}int
#   mailingStructIn MailingStruct - {http://tempuri.org/ns1.xsd}MailingStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
segmentID = mailingStructIn = nil
puts obj.sendMailing(segmentID, mailingStructIn)

# SYNOPSIS
#   MailingStatus(mailingID)
#
# ARGS
#   mailingID       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
mailingID = nil
puts obj.mailingStatus(mailingID)

# SYNOPSIS
#   ScheduleMailing(segmentID, sendDate, mailingStructIn)
#
# ARGS
#   segmentID       Int - {http://www.w3.org/2001/XMLSchema}int
#   sendDate        DateTime - {http://www.w3.org/2001/XMLSchema}dateTime
#   mailingStructIn MailingStruct - {http://tempuri.org/ns1.xsd}MailingStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
segmentID = sendDate = mailingStructIn = nil
puts obj.scheduleMailing(segmentID, sendDate, mailingStructIn)

# SYNOPSIS
#   ModerateMailing(moderateID, accept, sendRejectMessage)
#
# ARGS
#   moderateID      Int - {http://www.w3.org/2001/XMLSchema}int
#   accept          Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   sendRejectMessage Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
moderateID = accept = sendRejectMessage = nil
puts obj.moderateMailing(moderateID, accept, sendRejectMessage)

# SYNOPSIS
#   SelectContent(filterCriteriaArray)
#
# ARGS
#   filterCriteriaArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        ArrayOfContentStruct - {http://www.lyris.com/lmapi}ArrayOfContentStruct
#
filterCriteriaArray = nil
puts obj.selectContent(filterCriteriaArray)

# SYNOPSIS
#   SelectLists(listName, siteName)
#
# ARGS
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   siteName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        ArrayOfListStruct - {http://www.lyris.com/lmapi}ArrayOfListStruct
#
listName = siteName = nil
puts obj.selectLists(listName, siteName)

# SYNOPSIS
#   SelectSegments(filterCriteriaArray)
#
# ARGS
#   filterCriteriaArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        ArrayOfSegmentStruct - {http://www.lyris.com/lmapi}ArrayOfSegmentStruct
#
filterCriteriaArray = nil
puts obj.selectSegments(filterCriteriaArray)

# SYNOPSIS
#   SendMailingDirect(emailAddressArray, memberIDArray, mailingStructIn)
#
# ARGS
#   emailAddressArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#   memberIDArray   ArrayOfint - {http://www.lyris.com/lmapi}ArrayOfint
#   mailingStructIn MailingStruct - {http://tempuri.org/ns1.xsd}MailingStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
emailAddressArray = memberIDArray = mailingStructIn = nil
puts obj.sendMailingDirect(emailAddressArray, memberIDArray, mailingStructIn)

# SYNOPSIS
#   SendMemberDoc(simpleMemberStructIn, docTypeIn)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   docTypeIn       MessageTypeEnum - {http://tempuri.org/ns1.xsd}MessageTypeEnum
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
simpleMemberStructIn = docTypeIn = nil
puts obj.sendMemberDoc(simpleMemberStructIn, docTypeIn)

# SYNOPSIS
#   TrackingSummary(outMailID)
#
# ARGS
#   outMailID       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        TrackingSummaryStruct - {http://tempuri.org/ns1.xsd}TrackingSummaryStruct
#
outMailID = nil
puts obj.trackingSummary(outMailID)

# SYNOPSIS
#   Unsubscribe(simpleMemberStructArrayIn)
#
# ARGS
#   simpleMemberStructArrayIn ArrayOfSimpleMemberStruct - {http://www.lyris.com/lmapi}ArrayOfSimpleMemberStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
simpleMemberStructArrayIn = nil
puts obj.unsubscribe(simpleMemberStructArrayIn)

# SYNOPSIS
#   UpdateMemberEmail(simpleMemberStructIn, emailAddress)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = emailAddress = nil
puts obj.updateMemberEmail(simpleMemberStructIn, emailAddress)

# SYNOPSIS
#   UpdateMemberKind(simpleMemberStructIn, memberKind)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   memberKind      MemberKindEnum - {http://tempuri.org/ns1.xsd}MemberKindEnum
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = memberKind = nil
puts obj.updateMemberKind(simpleMemberStructIn, memberKind)

# SYNOPSIS
#   UpdateMemberStatus(simpleMemberStructIn, memberStatus)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   memberStatus    MemberStatusEnum - {http://tempuri.org/ns1.xsd}MemberStatusEnum
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = memberStatus = nil
puts obj.updateMemberStatus(simpleMemberStructIn, memberStatus)

# SYNOPSIS
#   UpdateList(listStructIn)
#
# ARGS
#   listStructIn    ListStruct - {http://tempuri.org/ns1.xsd}ListStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
listStructIn = nil
puts obj.updateList(listStructIn)

# SYNOPSIS
#   UpdateListAdmin(simpleMemberStructIn, isListAdmin, receiveListAdminMail, receiveModerationNotification, bypassListModeration)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   isListAdmin     Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   receiveListAdminMail Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   receiveModerationNotification Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#   bypassListModeration Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = isListAdmin = receiveListAdminMail = receiveModerationNotification = bypassListModeration = nil
puts obj.updateListAdmin(simpleMemberStructIn, isListAdmin, receiveListAdminMail, receiveModerationNotification, bypassListModeration)

# SYNOPSIS
#   UpdateMemberDemographics(simpleMemberStructIn, demographicsArray)
#
# ARGS
#   simpleMemberStructIn SimpleMemberStruct - {http://tempuri.org/ns1.xsd}SimpleMemberStruct
#   demographicsArray ArrayOfKeyValueType - {http://www.lyris.com/lmapi}ArrayOfKeyValueType
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
simpleMemberStructIn = demographicsArray = nil
puts obj.updateMemberDemographics(simpleMemberStructIn, demographicsArray)

# SYNOPSIS
#   CreateMemberColumn(fieldName, fieldType)
#
# ARGS
#   fieldName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   fieldType       FieldTypeEnum - {http://tempuri.org/ns1.xsd}FieldTypeEnum
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
fieldName = fieldType = nil
puts obj.createMemberColumn(fieldName, fieldType)

# SYNOPSIS
#   DeleteMemberColumn(fieldName)
#
# ARGS
#   fieldName       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
fieldName = nil
puts obj.deleteMemberColumn(fieldName)

# SYNOPSIS
#   CreateSegment(segmentStructIn)
#
# ARGS
#   segmentStructIn SegmentStruct - {http://tempuri.org/ns1.xsd}SegmentStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
segmentStructIn = nil
puts obj.createSegment(segmentStructIn)

# SYNOPSIS
#   UpdateSegment(segmentStructIn)
#
# ARGS
#   segmentStructIn SegmentStruct - {http://tempuri.org/ns1.xsd}SegmentStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
segmentStructIn = nil
puts obj.updateSegment(segmentStructIn)

# SYNOPSIS
#   DeleteSegment(segmentID)
#
# ARGS
#   segmentID       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
segmentID = nil
puts obj.deleteSegment(segmentID)

# SYNOPSIS
#   SendMessage(messageStructIn)
#
# ARGS
#   messageStructIn MessageStruct - {http://tempuri.org/ns1.xsd}MessageStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
messageStructIn = nil
puts obj.sendMessage(messageStructIn)

# SYNOPSIS
#   CreateSite(siteStructIn)
#
# ARGS
#   siteStructIn    SiteStruct - {http://tempuri.org/ns1.xsd}SiteStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
siteStructIn = nil
puts obj.createSite(siteStructIn)

# SYNOPSIS
#   UpdateSite(siteStructIn)
#
# ARGS
#   siteStructIn    SiteStruct - {http://tempuri.org/ns1.xsd}SiteStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
siteStructIn = nil
puts obj.updateSite(siteStructIn)

# SYNOPSIS
#   DeleteSite(siteID)
#
# ARGS
#   siteID          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
siteID = nil
puts obj.deleteSite(siteID)

# SYNOPSIS
#   CreateTopic(topicStructIn)
#
# ARGS
#   topicStructIn   TopicStruct - {http://tempuri.org/ns1.xsd}TopicStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
topicStructIn = nil
puts obj.createTopic(topicStructIn)

# SYNOPSIS
#   UpdateTopic(topicStructIn)
#
# ARGS
#   topicStructIn   TopicStruct - {http://tempuri.org/ns1.xsd}TopicStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
topicStructIn = nil
puts obj.updateTopic(topicStructIn)

# SYNOPSIS
#   DeleteTopic(topicTitle)
#
# ARGS
#   topicTitle      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
topicTitle = nil
puts obj.deleteTopic(topicTitle)

# SYNOPSIS
#   GetPreviewMailing(previewStructIn)
#
# ARGS
#   previewStructIn PreviewStruct - {http://tempuri.org/ns1.xsd}PreviewStruct
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
previewStructIn = nil
puts obj.getPreviewMailing(previewStructIn)

# SYNOPSIS
#   CreateServerAdmin(serverAdminStructIn)
#
# ARGS
#   serverAdminStructIn ServerAdminStruct - {http://tempuri.org/ns1.xsd}ServerAdminStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
serverAdminStructIn = nil
puts obj.createServerAdmin(serverAdminStructIn)

# SYNOPSIS
#   UpdateServerAdmin(serverAdminStructIn)
#
# ARGS
#   serverAdminStructIn ServerAdminStruct - {http://tempuri.org/ns1.xsd}ServerAdminStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
serverAdminStructIn = nil
puts obj.updateServerAdmin(serverAdminStructIn)

# SYNOPSIS
#   DeleteServerAdmin(serverAdminStructIn)
#
# ARGS
#   serverAdminStructIn ServerAdminStruct - {http://tempuri.org/ns1.xsd}ServerAdminStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
serverAdminStructIn = nil
puts obj.deleteServerAdmin(serverAdminStructIn)

# SYNOPSIS
#   CreateSiteAdmin(siteAdminStructIn)
#
# ARGS
#   siteAdminStructIn SiteAdminStruct - {http://tempuri.org/ns1.xsd}SiteAdminStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
siteAdminStructIn = nil
puts obj.createSiteAdmin(siteAdminStructIn)

# SYNOPSIS
#   UpdateSiteAdmin(siteAdminStructIn)
#
# ARGS
#   siteAdminStructIn SiteAdminStruct - {http://tempuri.org/ns1.xsd}SiteAdminStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
siteAdminStructIn = nil
puts obj.updateSiteAdmin(siteAdminStructIn)

# SYNOPSIS
#   DeleteSiteAdmin(siteAdminStructIn)
#
# ARGS
#   siteAdminStructIn SiteAdminStruct - {http://tempuri.org/ns1.xsd}SiteAdminStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
siteAdminStructIn = nil
puts obj.deleteSiteAdmin(siteAdminStructIn)

# SYNOPSIS
#   CreateContent(contentStructIn)
#
# ARGS
#   contentStructIn ContentStruct - {http://tempuri.org/ns1.xsd}ContentStruct
#
# RETURNS
#   v_return        Int - {http://www.w3.org/2001/XMLSchema}int
#
contentStructIn = nil
puts obj.createContent(contentStructIn)

# SYNOPSIS
#   UpdateContent(contentStructIn)
#
# ARGS
#   contentStructIn ContentStruct - {http://tempuri.org/ns1.xsd}ContentStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
contentStructIn = nil
puts obj.updateContent(contentStructIn)

# SYNOPSIS
#   DeleteContent(contentStructIn)
#
# ARGS
#   contentStructIn ContentStruct - {http://tempuri.org/ns1.xsd}ContentStruct
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
contentStructIn = nil
puts obj.deleteContent(contentStructIn)

# SYNOPSIS
#   SelectListsEx(listName, siteName, fieldsToFetch, whereClause)
#
# ARGS
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   siteName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   fieldsToFetch   ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#   whereClause     ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        ArrayOfArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfArrayOfstring
#
listName = siteName = fieldsToFetch = whereClause = nil
puts obj.selectListsEx(listName, siteName, fieldsToFetch, whereClause)

# SYNOPSIS
#   SelectMembersEx(fieldsToFetch, filterCriteriaArray)
#
# ARGS
#   fieldsToFetch   ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#   filterCriteriaArray ArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfstring
#
# RETURNS
#   v_return        ArrayOfArrayOfstring - {http://www.lyris.com/lmapi}ArrayOfArrayOfstring
#
fieldsToFetch = filterCriteriaArray = nil
puts obj.selectMembersEx(fieldsToFetch, filterCriteriaArray)

