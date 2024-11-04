// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/qusetion.dart';
import 'package:second_app/ques_ass.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
   List<String> answerlist = [];
  var harsh = 'welcome-screen';
  @override
  Widget build(context) {
    void switchscreen() {
      setState(() {
        harsh = 'Qusetion.screen';
      });
    }

    void answer(String ans) {
      answerlist.add(ans);
       if (answerlist.length == ques.length) {
      setState(() {
        answerlist = [];
        harsh = 'welcome-screen';
      });
    }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        color: const Color.fromARGB(255, 47, 118, 140),
        child: harsh == 'welcome-screen' ? question(switchscreen) : ques_ans(answer),
      )),
    );
  }
}
