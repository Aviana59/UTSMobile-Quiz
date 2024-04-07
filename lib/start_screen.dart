import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
