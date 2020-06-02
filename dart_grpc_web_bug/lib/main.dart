import 'package:dartgrpcwebbug/client/client.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: DebugWidget(),
      ),
    );
  }
}

class _DebugWidgetState extends State<DebugWidget> {
  String msg = "Waiting";

  @override
  void initState() {
    _getMsg()
        .then((value) => setState(() {
              msg = value;
            }))
        .catchError((e) => setState(() {
              msg = "Unexpected Error: ${e}";
            }));
  }

  Future<String> _getMsg() async {
    try {
      //todo set your IP address here
      var client = GRPCClient("192.168.86.22", 50051);
      var value = await client.increment(123);
      return "Normal return: ${value}";
    } catch (e) {
      print("Error: ${e}");
      return "Error: ${e}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(msg));
  }
}

class DebugWidget extends StatefulWidget {
  DebugWidget({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() => _DebugWidgetState();
}
