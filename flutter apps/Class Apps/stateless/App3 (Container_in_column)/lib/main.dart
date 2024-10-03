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
          backgroundColor:Color.fromARGB(255, 127, 205, 250),
          ),
      
          body:  Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                height:100,
                width:100,
                color:Color.fromARGB(255, 213, 236, 82),
              ),
              Container(
                height:100,
                width:100,
                color:Color.fromARGB(255, 134, 34, 126),
              ),
              Container(
                height:100,
                width:100,
                color:Color.fromARGB(255, 253, 74, 74),
              ),
            ]

          )
        ),
      ),
    );
  }
}
