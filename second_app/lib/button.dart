import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';

class button extends StatelessWidget {
  button(this.text, this.ontap, {super.key});

  String text;
  void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        // padding: EdgeInsets.fromLTRB(90, 60, 20, 10)
      ),
      // icon: const Icon(Icons.keyboard_option_key),
      child: Text(text),
    );
  }
}
