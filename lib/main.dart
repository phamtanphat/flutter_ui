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
  void initState() {
    super.initState();
    print("initState" );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    String text = "def";
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Text(text),
            ElevatedButton(onPressed: (){
              text = "abc";
            }, child: Text("Handle Text"))
          ],
        )
      ),
    );
  }
}
