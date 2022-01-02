import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();
  String result = "";

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
            Text(result.isEmpty ? "" : "Result = $result", style: TextStyle(fontSize: 20 , color: Colors.red)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                    String textNumber1 = number1Controller.text.toString();
                    String textNumber2 = number2Controller.text.toString();

                    if(textNumber1.isEmpty || textNumber2.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Empty input")));
                      return;
                    }

                    int number1 = int.parse(textNumber1);
                    int number2 = int.parse(textNumber2);

                    setState(() {
                      result = (number1 +  number2).toString();
                    });

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
