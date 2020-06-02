import 'package:dartgrpcwebbug/dbggrpc/dbggrpc.pbgrpc.dart';
import 'package:universal_platform/universal_platform.dart' show UniversalPlatform;
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';

class GRPCClient {
  var _channel;
  TestServiceClient client;

  GRPCClient(String host, int port) {
    if (UniversalPlatform.isWeb) {
      // https://github.com/grpc/grpc-dart/issues/264
      _channel = GrpcWebClientChannel.xhr(Uri.parse('http://${host}:${port}'));
    } else {
      _channel = ClientChannel(
        host,
        port: port,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
    }

    client = TestServiceClient(_channel);
  }

  void shutdown() async => await _channel.shutdown();

  Future<TestResponse> increment(int val) async {
    var request = TestRequest()..val = val;
    return await client.increment(request);
  }
}
