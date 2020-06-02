///
//  Generated code. Do not modify.
//  source: dbggrpc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'dbggrpc.pb.dart' as $0;
export 'dbggrpc.pb.dart';

class TestServiceClient extends $grpc.Client {
  static final _$increment =
      $grpc.ClientMethod<$0.TestRequest, $0.TestResponse>(
          '/dbggrpc.TestService/Increment',
          ($0.TestRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.TestResponse.fromBuffer(value));

  TestServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.TestResponse> increment($0.TestRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$increment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class TestServiceBase extends $grpc.Service {
  $core.String get $name => 'dbggrpc.TestService';

  TestServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TestRequest, $0.TestResponse>(
        'Increment',
        increment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TestRequest.fromBuffer(value),
        ($0.TestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TestResponse> increment_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TestRequest> request) async {
    return increment(call, await request);
  }

  $async.Future<$0.TestResponse> increment(
      $grpc.ServiceCall call, $0.TestRequest request);
}
