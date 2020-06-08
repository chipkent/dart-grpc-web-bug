
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_web.dart';

// https://github.com/grpc/grpc-dart/issues/264
ClientChannelBase createClientChannel(String host, int port) => GrpcWebClientChannel.xhr(Uri.parse('http://${host}:$port'));
