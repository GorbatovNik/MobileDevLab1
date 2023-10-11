//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use courseListRequestDescriptor instead')
const CourseListRequest$json = {
  '1': 'CourseListRequest',
};

/// Descriptor for `CourseListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseListRequestDescriptor = $convert.base64Decode(
    'ChFDb3Vyc2VMaXN0UmVxdWVzdA==');

@$core.Deprecated('Use courseListResponseDescriptor instead')
const CourseListResponse$json = {
  '1': 'CourseListResponse',
  '2': [
    {'1': 'cources', '3': 1, '4': 3, '5': 11, '6': '.v1.Course', '10': 'cources'},
  ],
};

/// Descriptor for `CourseListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseListResponseDescriptor = $convert.base64Decode(
    'ChJDb3Vyc2VMaXN0UmVzcG9uc2USJAoHY291cmNlcxgBIAMoCzIKLnYxLkNvdXJzZVIHY291cm'
    'Nlcw==');

@$core.Deprecated('Use courseDescriptor instead')
const Course$json = {
  '1': 'Course',
  '2': [
    {'1': 'course_id', '3': 1, '4': 1, '5': 4, '10': 'courseId'},
    {'1': 'cource_name', '3': 2, '4': 1, '5': 9, '10': 'courceName'},
  ],
};

/// Descriptor for `Course`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseDescriptor = $convert.base64Decode(
    'CgZDb3Vyc2USGwoJY291cnNlX2lkGAEgASgEUghjb3Vyc2VJZBIfCgtjb3VyY2VfbmFtZRgCIA'
    'EoCVIKY291cmNlTmFtZQ==');

@$core.Deprecated('Use groupListRequestDescriptor instead')
const GroupListRequest$json = {
  '1': 'GroupListRequest',
  '2': [
    {'1': 'course_id', '3': 1, '4': 1, '5': 4, '10': 'courseId'},
  ],
};

/// Descriptor for `GroupListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupListRequestDescriptor = $convert.base64Decode(
    'ChBHcm91cExpc3RSZXF1ZXN0EhsKCWNvdXJzZV9pZBgBIAEoBFIIY291cnNlSWQ=');

@$core.Deprecated('Use groupListResponseDescriptor instead')
const GroupListResponse$json = {
  '1': 'GroupListResponse',
  '2': [
    {'1': 'group', '3': 1, '4': 3, '5': 11, '6': '.v1.GroupListResponse.Group', '10': 'group'},
  ],
  '3': [GroupListResponse_Group$json],
};

@$core.Deprecated('Use groupListResponseDescriptor instead')
const GroupListResponse_Group$json = {
  '1': 'Group',
  '2': [
    {'1': 'group_id', '3': 1, '4': 1, '5': 4, '10': 'groupId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GroupListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupListResponseDescriptor = $convert.base64Decode(
    'ChFHcm91cExpc3RSZXNwb25zZRIxCgVncm91cBgBIAMoCzIbLnYxLkdyb3VwTGlzdFJlc3Bvbn'
    'NlLkdyb3VwUgVncm91cBo2CgVHcm91cBIZCghncm91cF9pZBgBIAEoBFIHZ3JvdXBJZBISCgRu'
    'YW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use groupUserListRequestDescriptor instead')
const GroupUserListRequest$json = {
  '1': 'GroupUserListRequest',
  '2': [
    {'1': 'group_id', '3': 1, '4': 1, '5': 4, '10': 'groupId'},
  ],
};

/// Descriptor for `GroupUserListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupUserListRequestDescriptor = $convert.base64Decode(
    'ChRHcm91cFVzZXJMaXN0UmVxdWVzdBIZCghncm91cF9pZBgBIAEoBFIHZ3JvdXBJZA==');

@$core.Deprecated('Use groupUserListResponseDescriptor instead')
const GroupUserListResponse$json = {
  '1': 'GroupUserListResponse',
  '2': [
    {'1': 'students', '3': 1, '4': 3, '5': 11, '6': '.v1.GroupUserListResponse.Student', '10': 'students'},
  ],
  '3': [GroupUserListResponse_Student$json],
};

@$core.Deprecated('Use groupUserListResponseDescriptor instead')
const GroupUserListResponse_Student$json = {
  '1': 'Student',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'patronymic', '3': 4, '4': 1, '5': 9, '10': 'patronymic'},
  ],
};

/// Descriptor for `GroupUserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupUserListResponseDescriptor = $convert.base64Decode(
    'ChVHcm91cFVzZXJMaXN0UmVzcG9uc2USPQoIc3R1ZGVudHMYASADKAsyIS52MS5Hcm91cFVzZX'
    'JMaXN0UmVzcG9uc2UuU3R1ZGVudFIIc3R1ZGVudHMafgoHU3R1ZGVudBIXCgd1c2VyX2lkGAEg'
    'ASgEUgZ1c2VySWQSHQoKZmlyc3RfbmFtZRgCIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZR'
    'gDIAEoCVIIbGFzdE5hbWUSHgoKcGF0cm9ueW1pYxgEIAEoCVIKcGF0cm9ueW1pYw==');

@$core.Deprecated('Use labsListRequestDescriptor instead')
const LabsListRequest$json = {
  '1': 'LabsListRequest',
  '2': [
    {'1': 'cource_id', '3': 1, '4': 1, '5': 4, '10': 'courceId'},
  ],
};

/// Descriptor for `LabsListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labsListRequestDescriptor = $convert.base64Decode(
    'Cg9MYWJzTGlzdFJlcXVlc3QSGwoJY291cmNlX2lkGAEgASgEUghjb3VyY2VJZA==');

@$core.Deprecated('Use labsListResponseDescriptor instead')
const LabsListResponse$json = {
  '1': 'LabsListResponse',
  '2': [
    {'1': 'labs', '3': 1, '4': 3, '5': 11, '6': '.v1.LabInfo', '10': 'labs'},
  ],
};

/// Descriptor for `LabsListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labsListResponseDescriptor = $convert.base64Decode(
    'ChBMYWJzTGlzdFJlc3BvbnNlEh8KBGxhYnMYASADKAsyCy52MS5MYWJJbmZvUgRsYWJz');

@$core.Deprecated('Use labInfoDescriptor instead')
const LabInfo$json = {
  '1': 'LabInfo',
  '2': [
    {'1': 'lab_id', '3': 1, '4': 1, '5': 4, '10': 'labId'},
    {'1': 'lab_name', '3': 2, '4': 1, '5': 9, '10': 'labName'},
    {'1': 'lab_description', '3': 3, '4': 1, '5': 9, '10': 'labDescription'},
    {'1': 'lab_max_mark', '3': 4, '4': 1, '5': 4, '10': 'labMaxMark'},
    {'1': 'lab_deadline', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'labDeadline'},
  ],
};

/// Descriptor for `LabInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labInfoDescriptor = $convert.base64Decode(
    'CgdMYWJJbmZvEhUKBmxhYl9pZBgBIAEoBFIFbGFiSWQSGQoIbGFiX25hbWUYAiABKAlSB2xhYk'
    '5hbWUSJwoPbGFiX2Rlc2NyaXB0aW9uGAMgASgJUg5sYWJEZXNjcmlwdGlvbhIgCgxsYWJfbWF4'
    'X21hcmsYBCABKARSCmxhYk1heE1hcmsSPQoMbGFiX2RlYWRsaW5lGAUgASgLMhouZ29vZ2xlLn'
    'Byb3RvYnVmLlRpbWVzdGFtcFILbGFiRGVhZGxpbmU=');

@$core.Deprecated('Use labByUserRequestDescriptor instead')
const LabByUserRequest$json = {
  '1': 'LabByUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
  ],
};

/// Descriptor for `LabByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labByUserRequestDescriptor = $convert.base64Decode(
    'ChBMYWJCeVVzZXJSZXF1ZXN0EhcKB3VzZXJfaWQYASABKARSBnVzZXJJZA==');

@$core.Deprecated('Use labByUserResponseDescriptor instead')
const LabByUserResponse$json = {
  '1': 'LabByUserResponse',
  '2': [
    {'1': 'user_lab', '3': 1, '4': 3, '5': 11, '6': '.v1.LabByUserResponse.UserLab', '10': 'userLab'},
  ],
  '3': [LabByUserResponse_UserLab$json],
};

@$core.Deprecated('Use labByUserResponseDescriptor instead')
const LabByUserResponse_UserLab$json = {
  '1': 'UserLab',
  '2': [
    {'1': 'lab_id', '3': 1, '4': 1, '5': 4, '10': 'labId'},
    {'1': 'mark', '3': 2, '4': 1, '5': 4, '10': 'mark'},
    {'1': 'on_revision', '3': 3, '4': 1, '5': 8, '10': 'onRevision'},
    {'1': 'send_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sendDate'},
  ],
};

/// Descriptor for `LabByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labByUserResponseDescriptor = $convert.base64Decode(
    'ChFMYWJCeVVzZXJSZXNwb25zZRI4Cgh1c2VyX2xhYhgBIAMoCzIdLnYxLkxhYkJ5VXNlclJlc3'
    'BvbnNlLlVzZXJMYWJSB3VzZXJMYWIajgEKB1VzZXJMYWISFQoGbGFiX2lkGAEgASgEUgVsYWJJ'
    'ZBISCgRtYXJrGAIgASgEUgRtYXJrEh8KC29uX3JldmlzaW9uGAMgASgIUgpvblJldmlzaW9uEj'
    'cKCXNlbmRfZGF0ZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHNlbmREYXRl');

