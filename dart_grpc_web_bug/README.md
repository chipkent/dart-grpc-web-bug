# dartgrpcwebbug

This program reproduces a "gRPC Error (14, XhrConnection connection-error)" error in the
Dart gRPC web implementation.

The problem is present in the web implementation but is not present in the mobile implementation.

To reproduce the problem:
0) cd into the root of this package.
1) Start the server:  On the command line, run "dart lib/server/server.dart"
2) In "main.dart", replace the IP address in _getMsg() with the IP address of the machine running the server.
3) In Android Studio, run "main.dart".
3a) If "main.dart" is run on an Android device, there are no problems.
3b) If "main.dart" is run on Chrome, the error occurs.
