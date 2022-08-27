import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int zar = Random().nextInt(6) +1;
  int ikincizar = Random().nextInt(6) +1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[200],
        body: Center(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    zar = Random().nextInt(6) +1;
                  });
                },
                child: Image(image:AssetImage("$zar.jpg")),
              ),
              Text("$zar"),
              GestureDetector(
                onTap: (){
                  setState(() {
                     ikincizar = Random().nextInt(6) +1;
                  });
                },
                child: Image(image:AssetImage("$ikincizar.jpg")),
              ),
              Text("$ikincizar"),

            ],
          ),
        ),
      ),
    );
  }
}



