import 'package:flutter/material.dart';

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
      home: HomeScreen(),
    );
  }
}

// class widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// state object cua widget ben tren
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: [
            Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.width / 5,
                child: Text("View A")
            ),
            Positioned(
              top: MediaQuery.of(context).size.width / 5,
              left: MediaQuery.of(context).size.width / 5,
              child: Container(
                  color: Colors.yellow,
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.width / 5,
                  child: Text("View B")
              ),
            ),
            Align(
              child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.width / 5,
                  child: Text("View C")
              ),
            )
          ],
        )
      ),
    );
  }
}
