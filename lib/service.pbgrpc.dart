//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('v1.ApiHandler')
class ApiHandlerClient extends $grpc.Client {
  static final _$getCourseList = $grpc.ClientMethod<$0.CourseListRequest, $0.CourseListResponse>(
      '/v1.ApiHandler/GetCourseList',
      ($0.CourseListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CourseListResponse.fromBuffer(value));
  static final _$getGroupList = $grpc.ClientMethod<$0.GroupListRequest, $0.GroupListResponse>(
      '/v1.ApiHandler/GetGroupList',
      ($0.GroupListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupListResponse.fromBuffer(value));
  static final _$getGroupUserList = $grpc.ClientMethod<$0.GroupUserListRequest, $0.GroupUserListResponse>(
      '/v1.ApiHandler/GetGroupUserList',
      ($0.GroupUserListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GroupUserListResponse.fromBuffer(value));
  static final _$getLabsList = $grpc.ClientMethod<$0.LabsListRequest, $0.LabsListResponse>(
      '/v1.ApiHandler/GetLabsList',
      ($0.LabsListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LabsListResponse.fromBuffer(value));
  static final _$getLabByUser = $grpc.ClientMethod<$0.LabByUserRequest, $0.LabByUserResponse>(
      '/v1.ApiHandler/GetLabByUser',
      ($0.LabByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LabByUserResponse.fromBuffer(value));

  ApiHandlerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CourseListResponse> getCourseList($0.CourseListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCourseList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupListResponse> getGroupList($0.GroupListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroupList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GroupUserListResponse> getGroupUserList($0.GroupUserListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGroupUserList, request, options: options);
  }

  $grpc.ResponseFuture<$0.LabsListResponse> getLabsList($0.LabsListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLabsList, request, options: options);
  }

  $grpc.ResponseFuture<$0.LabByUserResponse> getLabByUser($0.LabByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLabByUser, request, options: options);
  }
}

@$pb.GrpcServiceName('v1.ApiHandler')
abstract class ApiHandlerServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.ApiHandler';

  ApiHandlerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CourseListRequest, $0.CourseListResponse>(
        'GetCourseList',
        getCourseList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CourseListRequest.fromBuffer(value),
        ($0.CourseListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupListRequest, $0.GroupListResponse>(
        'GetGroupList',
        getGroupList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupListRequest.fromBuffer(value),
        ($0.GroupListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GroupUserListRequest, $0.GroupUserListResponse>(
        'GetGroupUserList',
        getGroupUserList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GroupUserListRequest.fromBuffer(value),
        ($0.GroupUserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LabsListRequest, $0.LabsListResponse>(
        'GetLabsList',
        getLabsList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LabsListRequest.fromBuffer(value),
        ($0.LabsListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LabByUserRequest, $0.LabByUserResponse>(
        'GetLabByUser',
        getLabByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LabByUserRequest.fromBuffer(value),
        ($0.LabByUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CourseListResponse> getCourseList_Pre($grpc.ServiceCall call, $async.Future<$0.CourseListRequest> request) async {
    return getCourseList(call, await request);
  }

  $async.Future<$0.GroupListResponse> getGroupList_Pre($grpc.ServiceCall call, $async.Future<$0.GroupListRequest> request) async {
    return getGroupList(call, await request);
  }

  $async.Future<$0.GroupUserListResponse> getGroupUserList_Pre($grpc.ServiceCall call, $async.Future<$0.GroupUserListRequest> request) async {
    return getGroupUserList(call, await request);
  }

  $async.Future<$0.LabsListResponse> getLabsList_Pre($grpc.ServiceCall call, $async.Future<$0.LabsListRequest> request) async {
    return getLabsList(call, await request);
  }

  $async.Future<$0.LabByUserResponse> getLabByUser_Pre($grpc.ServiceCall call, $async.Future<$0.LabByUserRequest> request) async {
    return getLabByUser(call, await request);
  }

  $async.Future<$0.CourseListResponse> getCourseList($grpc.ServiceCall call, $0.CourseListRequest request);
  $async.Future<$0.GroupListResponse> getGroupList($grpc.ServiceCall call, $0.GroupListRequest request);
  $async.Future<$0.GroupUserListResponse> getGroupUserList($grpc.ServiceCall call, $0.GroupUserListRequest request);
  $async.Future<$0.LabsListResponse> getLabsList($grpc.ServiceCall call, $0.LabsListRequest request);
  $async.Future<$0.LabByUserResponse> getLabByUser($grpc.ServiceCall call, $0.LabByUserRequest request);
}
