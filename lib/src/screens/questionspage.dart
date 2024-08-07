import 'package:adv_basics/src/commons/questions.dart';
import 'package:adv_basics/src/screens/results_screen.dart';
import 'package:flutter/material.dart';

 class Questionspage extends StatefulWidget{
  const Questionspage({super.key});

  @override
  State<StatefulWidget> createState() {
   return QuestionspageState();
  }
  
 }
 class QuestionspageState extends State<Questionspage>{
  List<String> selectedanswers =[];
  var currentQuestion = 0;
   selected(answer){
    selectedanswers.add(answer);
    if(selectedanswers.length<questions.length){
      setState(() {
        currentQuestion++;
      });
    }
    else {
      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ResultsScreen(onselectedanswer: selectedanswers)));
    }
}
  @override
  Widget build(BuildContext context) {
    var question = questions[currentQuestion];
   return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(question.text),
          const SizedBox(height: 30),
          ...question.shuffledList().map((value){
            return ElevatedButton(onPressed:(){
              selected(value);
            }, child:Text(value));
          }),
        ],
      ),
    ),
   );
  }
  
 }