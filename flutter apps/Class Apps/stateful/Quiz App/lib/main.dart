
import "package:flutter/material.dart";


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  
  State<StatefulWidget> createState() => _QuizAppState();

}


 class _QuizAppState extends State{

  List<Map> allQuestions = [
    {
      "question":"1.  Who is the founder of C programming Language?",
      "options" : ["Dennis Ritchie","Steve Jobs","Bill Gates","Larry Page"],
      "answer":0
    },
    {
      "question":"2.  Who is the founder of Google?",
      "options" : ["Dennis Ritche","Steve Jobs","Bill Gates","Larry Page"],
      "answer":3
    },
    {
      "question":"3.  Who is the founder of Meta?",
      "options" : ["Guido van Rossum","Steve Jobs","Mark Zukerberge","Larry Page"],
      "answer":2
    },
    {
      "question":"4.  Who is the founder of Microsoft?",
      "options" : ["Dennis Ritche","Steve Jobs","Bill Gates","Larry Page"],
      "answer":2
    },
    {
      "question":"5.  Who is the founder of Apple?",
      "options" : ["Dennis Ritche","Steve Jobs","Bill Gates","Larry Page"],
      "answer":1
    },
    
  ];
  int currentQuestionIndex=0;
  int selectedAnswerIndex=-1;
  int score=0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
      if(answerIndex == allQuestions[currentQuestionIndex]["answer"]){
        return const WidgetStatePropertyAll(Colors.green);
       
      }else if(selectedAnswerIndex == answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage =true;


  @override
  Widget build(BuildContext context){
    return isQuestionScreen();

  }

  Scaffold isQuestionScreen(){
    if (questionPage == true){
      return Scaffold(
      appBar:AppBar(
        title: const Text(
          "Quiz App",
          style:TextStyle(
            color:Colors.amber,
            fontWeight:FontWeight.bold,
            fontSize:50,

          ),
        ),
        backgroundColor:Colors.blue,
        centerTitle:true,

      ),

      body:
        Column(
        children: [
          const SizedBox(
            height:50,
          ),
          Row(
            children:[

              const SizedBox(
                width:550,  
                
                ),

                Text ("Questions: ${currentQuestionIndex+1}/ ${allQuestions.length} ",
                style:const TextStyle(
                  fontSize:30,
                  fontWeight:FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
                ),
            ],
          ),
//questions
          const SizedBox(
            height:50,
          ),

          SizedBox(
            width:700,
            height:80,
            child:Text(allQuestions[currentQuestionIndex]["question"],
            style:const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color:Color.fromARGB(255, 2, 20, 36),
            ),
            textAlign: TextAlign.center,
            ),
          ),

//button 1
            const SizedBox(
              height:45,
            ),

             SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(

                style:ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),


                onPressed: () {
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex=0;
                    
                    setState(() {});
                  }
                },


                child: Text("A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color:Colors.black,
              
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),
//buttton 2
            const SizedBox(
              height:25,
            ),

             SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),


                onPressed: (){
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex=1;
                    
                    setState(() {});
                  }
                },


                child: Text("B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color:Colors.black,
              
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),
//button 3

            const SizedBox(
              height:25,
            ),

             SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(

                style:ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),


                onPressed: (){
                  
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex=2;
                    setState(() {});
                    
                  }
                  
                },
                child: Text("C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color:Colors.black,
              
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),

//button 4
            const SizedBox(
              height:25,
            ),

             SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(

                style:ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),



                onPressed: (){
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex=3;
                    setState(() {});
                    
                  }
                },


                child: Text("D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color:Colors.black,
              
                ),
                textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),

      floatingActionButton:FloatingActionButton(
        onPressed: (){
          if(currentQuestionIndex != -1){
            if(currentQuestionIndex<allQuestions.length-1){
              currentQuestionIndex++;
          }else{
            questionPage=false;
          }
          selectedAnswerIndex=-1;
          setState(() {});
          }
        },
        backgroundColor: Colors.blue,
        child:const Icon(
          Icons.forward,
          color: Color.fromARGB(255, 248, 191, 19),
        ),
      ),
    );   
    
  }else{
    return Scaffold(
      appBar:AppBar(
        title:const Text("Quiz Result",
        style:TextStyle(
          fontSize:30,
          fontWeight:FontWeight.w800,
          color:Colors.amber,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPAvcHzmByMoMtQqJAZthUZ-aoeH1uVBMkg&s",
                height:350,
              ),

              const SizedBox(
                height:50,
              ),

              const Text("Congratulations",
              style: TextStyle(
                fontSize: 40,
                fontWeight:FontWeight.w800,
                color:Colors.black,
              ),
              ),
              const SizedBox(
                height:45,
              ),

              const Text("Score :",
              style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color:Colors.black,
              )
              )


            ],
          ),
        ),
    );
  }

 }
}