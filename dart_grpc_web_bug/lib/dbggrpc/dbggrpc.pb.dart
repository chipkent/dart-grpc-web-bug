///
//  Generated code. Do not modify.
//  source: dbggrpc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TestRequest', package: const $pb.PackageName('dbggrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'val', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TestRequest._() : super();
  factory TestRequest() => create();
  factory TestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TestRequest clone() => TestRequest()..mergeFromMessage(this);
  TestRequest copyWith(void Function(TestRequest) updates) => super.copyWith((message) => updates(message as TestRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestRequest create() => TestRequest._();
  TestRequest createEmptyInstance() => create();
  static $pb.PbList<TestRequest> createRepeated() => $pb.PbList<TestRequest>();
  @$core.pragma('dart2js:noInline')
  static TestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestRequest>(create);
  static TestRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);
}

class TestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TestResponse', package: const $pb.PackageName('dbggrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'val', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TestResponse._() : super();
  factory TestResponse() => create();
  factory TestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TestResponse clone() => TestResponse()..mergeFromMessage(this);
  TestResponse copyWith(void Function(TestResponse) updates) => super.copyWith((message) => updates(message as TestResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestResponse create() => TestResponse._();
  TestResponse createEmptyInstance() => create();
  static $pb.PbList<TestResponse> createRepeated() => $pb.PbList<TestResponse>();
  @$core.pragma('dart2js:noInline')
  static TestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestResponse>(create);
  static TestResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);
}

