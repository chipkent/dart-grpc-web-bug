import 'package:dartgrpcwebbug/dbggrpc/dbggrpc.pbgrpc.dart';
import 'clientchannel_base.dart'
  if(dart.library.io) 'clientchannel_android.dart'
  if(dart.library.js) 'clientchannel_web.dart';

class GRPCClient {
  var _channel;
  TestServiceClient client;

  GRPCClient(String host, int port) {
    _channel = createClientChannel(host,port);
    client = TestServiceClient(_channel);
  }

  void shutdown() async => await _channel.shutdown();

  Future<TestResponse> increment(int val) async {
    var request = TestRequest()..val = val;
    return await client.increment(request);
  }
}
