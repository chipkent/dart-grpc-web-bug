import 'package:dartgrpcwebbug/dbggrpc/dbggrpc.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class TestService extends TestServiceBase {
  @override
  Future<TestResponse> increment(ServiceCall call, TestRequest request) async {
    return TestResponse()..val = request.val + 1;
  }
}

Future<void> main(List<String> args) async {
  final server = Server([TestService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
