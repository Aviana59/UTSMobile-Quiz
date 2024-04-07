import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; // Fungsi untuk memulai kuis

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Menampilkan logo
          const Image(
            image: AssetImage('images/logo.png'),
            width: 250,
          ),
          const SizedBox(height: 30),
          // Tombol untuk memulai kuis
          TextButton(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text('Start Quiz!'),
          ),
        ],
      ),
    );
  }
}
