//import 'dart:math';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:second_app/button.dart';
import 'package:second_app/data/questions.dart';

class ques_ans extends StatefulWidget {
  ques_ans(this.slecttedanswer, {super.key});

  final void Function(String answer) slecttedanswer;

  @override
  State<ques_ans> createState() => _ques_ansState();
}

class _ques_ansState extends State<ques_ans> {
 // List<String> answerstore = [];
  var qusetionIndex = 0;

  void answerqusetion(String answer) {
    setState(() {
      widget.slecttedanswer(answer);

      qusetionIndex++;
      // if (qusetionIndex > 2) {
      //   qusetionIndex = 0;
      // }
    });
  }

  @override
  Widget build(context) {
    var harsh = ques[qusetionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            harsh.question,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          //   textAlign: TextAlign.center,
          const SizedBox(
            height: 30,
          ),
          ...harsh.getShuffledAnswers().map((answer) {
            //  const  SizedBox(height: 80);
            return button(answer, () {
              answerqusetion(answer);
            });
          }),
        ],
      ),
    );
  }
}
