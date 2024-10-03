import 'package:flutter/material.dart';


void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});
  @override
  State createState()=>_PlayersAppState();
}

  class _PlayersAppState extends State{
    int _counter =0 ;
    List<String> playersList =[
      "https://images.news18.com/ibnlive/uploads/2023/12/image-13-2023-12-6511b31faa631547f8f3a6548f15be7a.jpg?impolicy=website&width=640&height=480",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmDTjDX215hyp63i4arIMUoOKt5zdVxHQhPg&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdF2W2W8dt_pNCRP9tYx4gQpTQ2IqcFfQeHw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwkwxQ2X-s2WShmAc5TuQFirZuLWktWH2x7A&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6vrOXYBxv-dyhgJnVQxum-lmxsaKn1VEZ7g&s",
    ];
     @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Players',
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Players App"),
          backgroundColor: Colors.blue,
       
          centerTitle:true,
        ),
        body: Center(
          child :Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Image.network(playersList[_counter],
            height:200,
            ),
            ],
          ),
        
        ),

        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(_counter<playersList.length-1){
              _counter++;
            }else{
              _counter=0;
            }
            setState((){});
          },
          tooltip:'Increment',
         
          child: const Icon(Icons.add),
          ),
      ),
    );
  }
}

 