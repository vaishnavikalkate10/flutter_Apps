import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  Widget build(BuildContext context){
  return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title:const Text("Indian Flag"),
        centerTitle:true,
        backgroundColor:Colors.blue,
        ),

      
        body:Center(
          child:Row(
             mainAxisAlignment:MainAxisAlignment.center,
            children:[
                Container(
                    height:700,
                    width:7,
                    color:Colors.black,
                  ),

              Column(
                children:[
                  Container(
                    height:50,
                    width:300,
                    color:Colors.orange,

                  ),
                  Container(
                    height:50,
                    width:300,
                    color:Colors.white,
                    child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr61LgyhTsdgQRWbrnexntY_qBDSaaq6DfbQ&s"),
 
                  ),
                  Container(
                    height:50,
                    width:300,
                    color:Colors.green,
 
                  ),
                ],
              ),
            ],

        
          ),

        ),
      ),
    );
  }
}