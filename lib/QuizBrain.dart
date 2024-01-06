import 'package:quizappflutter/QuestionModel.dart';

class QuizBrain {

  List<QuestionModel> questions = [QuestionModel(txt: "question 1",answer: false),
    QuestionModel(txt: "question 2", answer: true),
    QuestionModel(txt: "question 3", answer: true)];

  String getQuestion(int index){
    return questions[index].txt!;
  }

}