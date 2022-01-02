import 'package:flutter/material.dart';
import 'package:flutter_ui/home_page.dart';

void main() {
  // 1 view => 1 widget
  // application => 1 dua va lon nhat
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
