import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quizappflutter/QuestionModel.dart';
import 'package:quizappflutter/QuizBrain.dart';

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() {
    return QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
  List<Widget> score = [];

  // List<QuestionModel> questions = [QuestionModel(txt: "question 1",answer: false),
  //   QuestionModel(txt: "question 2", answer: true),
  // QuestionModel(txt: "question 3", answer: true)];

  QuizBrain questionsBrain = QuizBrain();

  //List<bool> answers = [false, true, true];

  int index = 0;
  int scoreNum = 0;
  // bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
              child: Text(
            textAlign: TextAlign.center,
              index < questionsBrain.questions.length?
                  questionsBrain.getQuestion(index) : scoreNum.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          )),
          flex: 5,
        ),

        Expanded(
            child: TextButton(
          onPressed: () {
            if(questionsBrain.questions[index].answer!){
              score.add(Icon(Icons.check, color: Colors.green,));
              scoreNum++;
            }else {
              score.add(Icon(Icons.close, color: Colors.red,));
            }
            index++;

            // if (index < questionsBrain.questions.length - 1) index++;
            setState(() {});
          },
          child: Text("True"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            // textStyle:
          ),
        )),
         Expanded(
            child: TextButton(
          onPressed: () {
            if(questionsBrain.questions[index].answer!){
              score.add(Icon(Icons.close, color: Colors.red,));
            }else {
              score.add(Icon(Icons.check, color: Colors.green,));
              scoreNum++;
            }
            index++;

            // if (index < questionsBrain.questions.length - 1) index++;
            setState(() {});
          },
          child: Text("False"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            // textStyle:
          ),
        )
        ),


        Row(children: score)
      ],
    );
  }
}
