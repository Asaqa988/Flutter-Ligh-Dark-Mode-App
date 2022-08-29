import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String myText = "";
  List<Color> defaultColor = [Colors.white, Colors.grey];

  List<Color> DarkColor = [Colors.black, Colors.pink];
  List<Color> LightColor = [Colors.white, Colors.pink];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          decoration:
              BoxDecoration(gradient: LinearGradient(colors: defaultColor)),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "hello i am a text",
                style: TextStyle(fontSize: 30),
              ),
              RaisedButton(
                  child: Text("Press Me"),
                  onPressed: () {
                    setState(() {
                      myText = "hello i have changed";
                    });
                  }),
              Text(
                "$myText",
                style: TextStyle(fontSize: 40),
              ),
              MaterialButton(
                  color: Colors.orange,
                  child: Text(
                    "change to the Dark Mode",
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    setState(() {
                      defaultColor = DarkColor;
                    });
                  }),
              MaterialButton(
                  color: Colors.orange,
                  child: Text(
                    "change to the light Mode",
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    setState(() {
                      defaultColor = LightColor;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
