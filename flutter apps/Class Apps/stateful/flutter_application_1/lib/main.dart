import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarColor());
}

class AppbarColor extends StatefulWidget {
  const AppbarColor({super.key});
  @override
  State createState()=>_AppbarColor();
}

  class _AppbarColor extends State{
    bool changeColor=true;
     @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Container Color App"),
          backgroundColor:changeColor? Colors.blue:Colors.yellow,
       
          centerTitle:true,
        ),
        body: Center(
          child: Container(
            height:200,
            width:200,
            color:Colors.black,
          )
        ),

        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(changeColor==true){
              changeColor=false;
            }else{
              changeColor=true;
            }
            setState((){});
          },
          backgroundColor: Colors.blue,
          child: const Text("Toggle"),
          ),
      ),
    );
  }
}

 