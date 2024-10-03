import 'package:flutter/material.dart';


void main() {
  runApp(const ContainerColor());
}

class ContainerColor extends StatefulWidget {
  const ContainerColor({super.key});
  @override
  State createState()=>_ContainerColor();
}

  class _ContainerColor extends State{
    bool changeColor=true;
     @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Container Color App"),
          backgroundColor: Colors.blue,
       
          centerTitle:true,
        ),
        body: Center(
          child: Container(
            height:200,
            width:200,
            color:changeColor?Colors.red:Colors.black,
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

 