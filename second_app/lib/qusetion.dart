import 'package:flutter/material.dart';

class question extends StatelessWidget {
  question(this.harsh, {super.key});

  void Function() harsh;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
              opacity: 1,
              child: Image.asset(
                "assets/quiz-logo.png",
                width: 200,
                color: const Color.fromARGB(255, 0, 0, 0),
              )),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Lets Learn flutter ",
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: harsh,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.swipe_right_alt_sharp),
            label: const Text("Let's start"),
          )
        ],
      ),
    );
  }
}
