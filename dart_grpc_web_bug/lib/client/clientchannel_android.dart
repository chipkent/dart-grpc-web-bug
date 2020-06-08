
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc.dart';

ClientChannelBase createClientChannel(String host, int port) => ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
