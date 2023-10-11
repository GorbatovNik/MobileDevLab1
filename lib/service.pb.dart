//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'timestamp.pb.dart' as $1;

class CourseListRequest extends $pb.GeneratedMessage {
  factory CourseListRequest() => create();
  CourseListRequest._() : super();
  factory CourseListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourseListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourseListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourseListRequest clone() => CourseListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourseListRequest copyWith(void Function(CourseListRequest) updates) => super.copyWith((message) => updates(message as CourseListRequest)) as CourseListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourseListRequest create() => CourseListRequest._();
  CourseListRequest createEmptyInstance() => create();
  static $pb.PbList<CourseListRequest> createRepeated() => $pb.PbList<CourseListRequest>();
  @$core.pragma('dart2js:noInline')
  static CourseListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourseListRequest>(create);
  static CourseListRequest? _defaultInstance;
}

class CourseListResponse extends $pb.GeneratedMessage {
  factory CourseListResponse({
    $core.Iterable<Course>? cources,
  }) {
    final $result = create();
    if (cources != null) {
      $result.cources.addAll(cources);
    }
    return $result;
  }
  CourseListResponse._() : super();
  factory CourseListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourseListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourseListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..pc<Course>(1, _omitFieldNames ? '' : 'cources', $pb.PbFieldType.PM, subBuilder: Course.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourseListResponse clone() => CourseListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourseListResponse copyWith(void Function(CourseListResponse) updates) => super.copyWith((message) => updates(message as CourseListResponse)) as CourseListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourseListResponse create() => CourseListResponse._();
  CourseListResponse createEmptyInstance() => create();
  static $pb.PbList<CourseListResponse> createRepeated() => $pb.PbList<CourseListResponse>();
  @$core.pragma('dart2js:noInline')
  static CourseListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourseListResponse>(create);
  static CourseListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Course> get cources => $_getList(0);
}

class Course extends $pb.GeneratedMessage {
  factory Course({
    $fixnum.Int64? courseId,
    $core.String? courceName,
  }) {
    final $result = create();
    if (courseId != null) {
      $result.courseId = courseId;
    }
    if (courceName != null) {
      $result.courceName = courceName;
    }
    return $result;
  }
  Course._() : super();
  factory Course.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Course.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Course', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'courseId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'courceName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Course clone() => Course()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Course copyWith(void Function(Course) updates) => super.copyWith((message) => updates(message as Course)) as Course;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Course create() => Course._();
  Course createEmptyInstance() => create();
  static $pb.PbList<Course> createRepeated() => $pb.PbList<Course>();
  @$core.pragma('dart2js:noInline')
  static Course getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Course>(create);
  static Course? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get courseId => $_getI64(0);
  @$pb.TagNumber(1)
  set courseId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourseId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get courceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set courceName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCourceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCourceName() => clearField(2);
}

class GroupListRequest extends $pb.GeneratedMessage {
  factory GroupListRequest({
    $fixnum.Int64? courseId,
  }) {
    final $result = create();
    if (courseId != null) {
      $result.courseId = courseId;
    }
    return $result;
  }
  GroupListRequest._() : super();
  factory GroupListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'courseId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupListRequest clone() => GroupListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupListRequest copyWith(void Function(GroupListRequest) updates) => super.copyWith((message) => updates(message as GroupListRequest)) as GroupListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupListRequest create() => GroupListRequest._();
  GroupListRequest createEmptyInstance() => create();
  static $pb.PbList<GroupListRequest> createRepeated() => $pb.PbList<GroupListRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupListRequest>(create);
  static GroupListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get courseId => $_getI64(0);
  @$pb.TagNumber(1)
  set courseId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourseId() => clearField(1);
}

class GroupListResponse_Group extends $pb.GeneratedMessage {
  factory GroupListResponse_Group({
    $fixnum.Int64? groupId,
    $core.String? name,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GroupListResponse_Group._() : super();
  factory GroupListResponse_Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupListResponse_Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupListResponse.Group', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupListResponse_Group clone() => GroupListResponse_Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupListResponse_Group copyWith(void Function(GroupListResponse_Group) updates) => super.copyWith((message) => updates(message as GroupListResponse_Group)) as GroupListResponse_Group;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupListResponse_Group create() => GroupListResponse_Group._();
  GroupListResponse_Group createEmptyInstance() => create();
  static $pb.PbList<GroupListResponse_Group> createRepeated() => $pb.PbList<GroupListResponse_Group>();
  @$core.pragma('dart2js:noInline')
  static GroupListResponse_Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupListResponse_Group>(create);
  static GroupListResponse_Group? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class GroupListResponse extends $pb.GeneratedMessage {
  factory GroupListResponse({
    $core.Iterable<GroupListResponse_Group>? group,
  }) {
    final $result = create();
    if (group != null) {
      $result.group.addAll(group);
    }
    return $result;
  }
  GroupListResponse._() : super();
  factory GroupListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..pc<GroupListResponse_Group>(1, _omitFieldNames ? '' : 'group', $pb.PbFieldType.PM, subBuilder: GroupListResponse_Group.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupListResponse clone() => GroupListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupListResponse copyWith(void Function(GroupListResponse) updates) => super.copyWith((message) => updates(message as GroupListResponse)) as GroupListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupListResponse create() => GroupListResponse._();
  GroupListResponse createEmptyInstance() => create();
  static $pb.PbList<GroupListResponse> createRepeated() => $pb.PbList<GroupListResponse>();
  @$core.pragma('dart2js:noInline')
  static GroupListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupListResponse>(create);
  static GroupListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GroupListResponse_Group> get group => $_getList(0);
}

class GroupUserListRequest extends $pb.GeneratedMessage {
  factory GroupUserListRequest({
    $fixnum.Int64? groupId,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    return $result;
  }
  GroupUserListRequest._() : super();
  factory GroupUserListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupUserListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupUserListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupUserListRequest clone() => GroupUserListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupUserListRequest copyWith(void Function(GroupUserListRequest) updates) => super.copyWith((message) => updates(message as GroupUserListRequest)) as GroupUserListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupUserListRequest create() => GroupUserListRequest._();
  GroupUserListRequest createEmptyInstance() => create();
  static $pb.PbList<GroupUserListRequest> createRepeated() => $pb.PbList<GroupUserListRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupUserListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupUserListRequest>(create);
  static GroupUserListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get groupId => $_getI64(0);
  @$pb.TagNumber(1)
  set groupId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class GroupUserListResponse_Student extends $pb.GeneratedMessage {
  factory GroupUserListResponse_Student({
    $fixnum.Int64? userId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? patronymic,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    if (patronymic != null) {
      $result.patronymic = patronymic;
    }
    return $result;
  }
  GroupUserListResponse_Student._() : super();
  factory GroupUserListResponse_Student.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupUserListResponse_Student.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupUserListResponse.Student', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'firstName')
    ..aOS(3, _omitFieldNames ? '' : 'lastName')
    ..aOS(4, _omitFieldNames ? '' : 'patronymic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupUserListResponse_Student clone() => GroupUserListResponse_Student()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupUserListResponse_Student copyWith(void Function(GroupUserListResponse_Student) updates) => super.copyWith((message) => updates(message as GroupUserListResponse_Student)) as GroupUserListResponse_Student;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupUserListResponse_Student create() => GroupUserListResponse_Student._();
  GroupUserListResponse_Student createEmptyInstance() => create();
  static $pb.PbList<GroupUserListResponse_Student> createRepeated() => $pb.PbList<GroupUserListResponse_Student>();
  @$core.pragma('dart2js:noInline')
  static GroupUserListResponse_Student getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupUserListResponse_Student>(create);
  static GroupUserListResponse_Student? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get patronymic => $_getSZ(3);
  @$pb.TagNumber(4)
  set patronymic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPatronymic() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatronymic() => clearField(4);
}

class GroupUserListResponse extends $pb.GeneratedMessage {
  factory GroupUserListResponse({
    $core.Iterable<GroupUserListResponse_Student>? students,
  }) {
    final $result = create();
    if (students != null) {
      $result.students.addAll(students);
    }
    return $result;
  }
  GroupUserListResponse._() : super();
  factory GroupUserListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupUserListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupUserListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..pc<GroupUserListResponse_Student>(1, _omitFieldNames ? '' : 'students', $pb.PbFieldType.PM, subBuilder: GroupUserListResponse_Student.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupUserListResponse clone() => GroupUserListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupUserListResponse copyWith(void Function(GroupUserListResponse) updates) => super.copyWith((message) => updates(message as GroupUserListResponse)) as GroupUserListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupUserListResponse create() => GroupUserListResponse._();
  GroupUserListResponse createEmptyInstance() => create();
  static $pb.PbList<GroupUserListResponse> createRepeated() => $pb.PbList<GroupUserListResponse>();
  @$core.pragma('dart2js:noInline')
  static GroupUserListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupUserListResponse>(create);
  static GroupUserListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GroupUserListResponse_Student> get students => $_getList(0);
}

class LabsListRequest extends $pb.GeneratedMessage {
  factory LabsListRequest({
    $fixnum.Int64? courceId,
  }) {
    final $result = create();
    if (courceId != null) {
      $result.courceId = courceId;
    }
    return $result;
  }
  LabsListRequest._() : super();
  factory LabsListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabsListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabsListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'courceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabsListRequest clone() => LabsListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabsListRequest copyWith(void Function(LabsListRequest) updates) => super.copyWith((message) => updates(message as LabsListRequest)) as LabsListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabsListRequest create() => LabsListRequest._();
  LabsListRequest createEmptyInstance() => create();
  static $pb.PbList<LabsListRequest> createRepeated() => $pb.PbList<LabsListRequest>();
  @$core.pragma('dart2js:noInline')
  static LabsListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabsListRequest>(create);
  static LabsListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get courceId => $_getI64(0);
  @$pb.TagNumber(1)
  set courceId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourceId() => clearField(1);
}

class LabsListResponse extends $pb.GeneratedMessage {
  factory LabsListResponse({
    $core.Iterable<LabInfo>? labs,
  }) {
    final $result = create();
    if (labs != null) {
      $result.labs.addAll(labs);
    }
    return $result;
  }
  LabsListResponse._() : super();
  factory LabsListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabsListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabsListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..pc<LabInfo>(1, _omitFieldNames ? '' : 'labs', $pb.PbFieldType.PM, subBuilder: LabInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabsListResponse clone() => LabsListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabsListResponse copyWith(void Function(LabsListResponse) updates) => super.copyWith((message) => updates(message as LabsListResponse)) as LabsListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabsListResponse create() => LabsListResponse._();
  LabsListResponse createEmptyInstance() => create();
  static $pb.PbList<LabsListResponse> createRepeated() => $pb.PbList<LabsListResponse>();
  @$core.pragma('dart2js:noInline')
  static LabsListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabsListResponse>(create);
  static LabsListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LabInfo> get labs => $_getList(0);
}

class LabInfo extends $pb.GeneratedMessage {
  factory LabInfo({
    $fixnum.Int64? labId,
    $core.String? labName,
    $core.String? labDescription,
    $fixnum.Int64? labMaxMark,
    $1.Timestamp? labDeadline,
  }) {
    final $result = create();
    if (labId != null) {
      $result.labId = labId;
    }
    if (labName != null) {
      $result.labName = labName;
    }
    if (labDescription != null) {
      $result.labDescription = labDescription;
    }
    if (labMaxMark != null) {
      $result.labMaxMark = labMaxMark;
    }
    if (labDeadline != null) {
      $result.labDeadline = labDeadline;
    }
    return $result;
  }
  LabInfo._() : super();
  factory LabInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'labId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'labName')
    ..aOS(3, _omitFieldNames ? '' : 'labDescription')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'labMaxMark', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'labDeadline', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabInfo clone() => LabInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabInfo copyWith(void Function(LabInfo) updates) => super.copyWith((message) => updates(message as LabInfo)) as LabInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabInfo create() => LabInfo._();
  LabInfo createEmptyInstance() => create();
  static $pb.PbList<LabInfo> createRepeated() => $pb.PbList<LabInfo>();
  @$core.pragma('dart2js:noInline')
  static LabInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabInfo>(create);
  static LabInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get labId => $_getI64(0);
  @$pb.TagNumber(1)
  set labId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get labName => $_getSZ(1);
  @$pb.TagNumber(2)
  set labName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get labDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set labDescription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabDescription() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get labMaxMark => $_getI64(3);
  @$pb.TagNumber(4)
  set labMaxMark($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabMaxMark() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabMaxMark() => clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get labDeadline => $_getN(4);
  @$pb.TagNumber(5)
  set labDeadline($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLabDeadline() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabDeadline() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureLabDeadline() => $_ensure(4);
}

class LabByUserRequest extends $pb.GeneratedMessage {
  factory LabByUserRequest({
    $fixnum.Int64? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  LabByUserRequest._() : super();
  factory LabByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabByUserRequest clone() => LabByUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabByUserRequest copyWith(void Function(LabByUserRequest) updates) => super.copyWith((message) => updates(message as LabByUserRequest)) as LabByUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabByUserRequest create() => LabByUserRequest._();
  LabByUserRequest createEmptyInstance() => create();
  static $pb.PbList<LabByUserRequest> createRepeated() => $pb.PbList<LabByUserRequest>();
  @$core.pragma('dart2js:noInline')
  static LabByUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabByUserRequest>(create);
  static LabByUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class LabByUserResponse_UserLab extends $pb.GeneratedMessage {
  factory LabByUserResponse_UserLab({
    $fixnum.Int64? labId,
    $fixnum.Int64? mark,
    $core.bool? onRevision,
    $1.Timestamp? sendDate,
  }) {
    final $result = create();
    if (labId != null) {
      $result.labId = labId;
    }
    if (mark != null) {
      $result.mark = mark;
    }
    if (onRevision != null) {
      $result.onRevision = onRevision;
    }
    if (sendDate != null) {
      $result.sendDate = sendDate;
    }
    return $result;
  }
  LabByUserResponse_UserLab._() : super();
  factory LabByUserResponse_UserLab.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabByUserResponse_UserLab.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabByUserResponse.UserLab', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'labId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'mark', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, _omitFieldNames ? '' : 'onRevision')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'sendDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabByUserResponse_UserLab clone() => LabByUserResponse_UserLab()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabByUserResponse_UserLab copyWith(void Function(LabByUserResponse_UserLab) updates) => super.copyWith((message) => updates(message as LabByUserResponse_UserLab)) as LabByUserResponse_UserLab;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabByUserResponse_UserLab create() => LabByUserResponse_UserLab._();
  LabByUserResponse_UserLab createEmptyInstance() => create();
  static $pb.PbList<LabByUserResponse_UserLab> createRepeated() => $pb.PbList<LabByUserResponse_UserLab>();
  @$core.pragma('dart2js:noInline')
  static LabByUserResponse_UserLab getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabByUserResponse_UserLab>(create);
  static LabByUserResponse_UserLab? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get labId => $_getI64(0);
  @$pb.TagNumber(1)
  set labId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get mark => $_getI64(1);
  @$pb.TagNumber(2)
  set mark($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMark() => $_has(1);
  @$pb.TagNumber(2)
  void clearMark() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get onRevision => $_getBF(2);
  @$pb.TagNumber(3)
  set onRevision($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOnRevision() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnRevision() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get sendDate => $_getN(3);
  @$pb.TagNumber(4)
  set sendDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSendDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearSendDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureSendDate() => $_ensure(3);
}

class LabByUserResponse extends $pb.GeneratedMessage {
  factory LabByUserResponse({
    $core.Iterable<LabByUserResponse_UserLab>? userLab,
  }) {
    final $result = create();
    if (userLab != null) {
      $result.userLab.addAll(userLab);
    }
    return $result;
  }
  LabByUserResponse._() : super();
  factory LabByUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabByUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabByUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'v1'), createEmptyInstance: create)
    ..pc<LabByUserResponse_UserLab>(1, _omitFieldNames ? '' : 'userLab', $pb.PbFieldType.PM, subBuilder: LabByUserResponse_UserLab.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabByUserResponse clone() => LabByUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabByUserResponse copyWith(void Function(LabByUserResponse) updates) => super.copyWith((message) => updates(message as LabByUserResponse)) as LabByUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabByUserResponse create() => LabByUserResponse._();
  LabByUserResponse createEmptyInstance() => create();
  static $pb.PbList<LabByUserResponse> createRepeated() => $pb.PbList<LabByUserResponse>();
  @$core.pragma('dart2js:noInline')
  static LabByUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabByUserResponse>(create);
  static LabByUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LabByUserResponse_UserLab> get userLab => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
