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

  String text = "def";

  @override
  void initState() {
    super.initState();
    print("Parent : initState" );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Parent : didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Parent : didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    print("Parent : build");
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
             setState(() {
               text = "abc";
             });
            }, child: Text("Handle Text")),
            Children()
          ],
        )
      ),
    );
  }
}

class Children extends StatefulWidget {

  @override
  _ChildrenState createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {

  @override
  void initState() {
    super.initState();
    print("Children : initState" );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Children : didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant Children oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Children : didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    print("Children : build");
    return Container(
      child: Text("Children"),
    );
  }
}

