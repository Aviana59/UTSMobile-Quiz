import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/answer_button.dart'; // Mengimpor widget AnswerButton
import 'package:quiz/data/question.dart'; // Mengimpor model data Question

// Mendefinisikan widget QuestionsScreen yang merupakan StatefulWidget
class QuestionsScreen extends StatefulWidget {
  // Konstruktor untuk widget QuestionsScreen
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  // Fungsi callback untuk menangani saat jawaban dipilih
  final void Function(String answer) onSelectAnswer;

  // Override metode createState untuk membuat state untuk QuestionsScreen
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

// Mendefinisikan state untuk widget QuestionsScreen
class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0; // Menginisialisasi currentQuestionIndex

  // Fungsi untuk menangani saat jawaban dipilih
  void answerQuestion(String selectedAnswer) {
    // Memanggil fungsi callback dengan jawaban yang dipilih
    widget.onSelectAnswer(selectedAnswer);
    // Memperbarui currentQuestionIndex dan membangun ulang UI
    setState(() {
      currentQuestionIndex++; // menambah nilai sebanyak 1
    });
  }

  // Metode build untuk membuat UI
  @override
  Widget build(context) {
    // Mendapatkan pertanyaan saat ini dari daftar pertanyaan
    final currentQuestion = questions[currentQuestionIndex];

    // Menampilkan tata letak UI
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                border: Border.all(width: 3.0, color: Colors.black),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black87,
                    offset: Offset(10, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  currentQuestion.text,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 32, 16, 95),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Menampilkan tombol jawaban untuk pertanyaan saat ini
            ...currentQuestion.shuffledAnswers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  // Memanggil fungsi answerQuestion ketika tombol jawaban ditekan
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}