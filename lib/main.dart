import 'package:flutter/material.dart';
import 'package:quizappflutter/QuizPage.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuizPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(),
    )
  );
}

