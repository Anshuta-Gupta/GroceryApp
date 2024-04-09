import 'package:flutter/material.dart';

import 'pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
