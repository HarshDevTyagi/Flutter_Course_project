import 'package:flutter/material.dart';
import 'package:second_app/button.dart';
import 'package:second_app/data/questions.dart';

class ques_ans extends StatefulWidget {
  ques_ans(this.answer, {super.key});

  final void Function(String answer) answer;

  @override
  State<ques_ans> createState() => _ques_ansState();
}

class _ques_ansState extends State<ques_ans> {

  final harsh = ques[1];

  @override
  Widget build(context) {
    return Container(
      margin:const  EdgeInsets.all(40),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            harsh.question,
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...harsh.getShuffledAnswers().map((answer) {
            //  const  SizedBox(height: 80);
            return button(answer, () {});
          }),
        ],
      ),
    );
  }
}
