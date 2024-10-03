import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Container App"),
          backgroundColor: Colors.yellow,
          centerTitle:true,
          ),
        body: Center(
          child:
          Container(
            height:200,
            width:200,
            color:Colors.red
            ),
        ),
      ),
    );
  }
}
