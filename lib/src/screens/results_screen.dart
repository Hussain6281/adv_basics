import 'package:adv_basics/src/commons/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key, required this.onselectedanswer});
  final List<String> onselectedanswer;

  @override
  State<StatefulWidget> createState() {
    return ResultsScreenState();
  }
}

class ResultsScreenState extends State<ResultsScreen> {
  int getCorrectAnswer() {
    int count = 1;
    for (var i = 0; i < widget.onselectedanswer.length; i++) {
      if (widget.onselectedanswer[i] == questions[i].answer[0]) {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    var x = getCorrectAnswer();
    var y = questions.length;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("you answered $x out of $y questions correctly"),
      ),
    );
  }
}
