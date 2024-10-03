import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('First app'),
          centerTitle:true,
          backgroundColor:Colors.blue,
          ),
      
          body:  Center(
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                height:100,
                width:100,
                color:Color.fromARGB(255, 30, 235, 64),
              ),
              Container(
                height:100,
                width:100,
                color:Color.fromARGB(255, 248, 24, 229),
              ),
              Container(
                height:100,
                width:100,
                color:Colors.amber,
              ),
            ]

          )
        ),
      ),
    );
  }
}
