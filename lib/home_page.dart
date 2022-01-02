import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(height: 5),
            TextField(
              controller: number1Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                hintText: "Input number 1",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 5),
            TextField(
              controller: number2Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                hintText: "Input number 2",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            Text("Result = 10" , style: TextStyle(fontSize: 20 , color: Colors.red)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){

                }, child: Text("+" , style: TextStyle(fontSize: 20))),
                ElevatedButton(onPressed: (){

                }, child: Text("-" , style: TextStyle(fontSize: 20)))
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){

                }, child: Text("*" , style: TextStyle(fontSize: 20))),
                ElevatedButton(onPressed: (){

                }, child: Text("/" , style: TextStyle(fontSize: 20)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
