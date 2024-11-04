import 'package:flutter/material.dart';

class Question_Answer {
  Question_Answer(this.question, this.answer);

  String question;

  List<String> answer;
   List<String> getShuffledAnswers() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}

