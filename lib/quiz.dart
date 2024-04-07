import 'package:flutter/material.dart';

import 'package:quiz/start_screen.dart'; // Mengimpor widget StartScreen
import 'package:quiz/question_screen.dart'; // Mengimpor widget QuestionScreen
import 'package:quiz/data/question.dart'; // Mengimpor model data Question
import 'package:quiz/result_screen.dart'; // Mengimpor widget ResultScreen

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> _selectedAnswers =
      []; // List untuk menyimpan jawaban yang dipilih
  var _activeScreen = 'start-screen'; // Variabel untuk menentukan layar aktif

  // Fungsi untuk beralih ke layar berikutnya
  void _switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  // Fungsi untuk memilih jawaban
  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    // Jika semua pertanyaan telah dijawab, beralih ke layar hasil
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  // Fungsi untuk me-restart kuis
  void restartQuiz() {
    setState(() {
      _activeScreen = 'questions-screen';
      _selectedAnswers.clear(); // Menghapus semua jawaban yang dipilih
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(_switchScreen); // Widget layar awal

    // Menentukan widget layar berdasarkan variabel _activeScreen
    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: _chooseAnswer,
      );
    }

    if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    // Mengembalikan tata letak aplikasi
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 30, 255, 199),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, // Menampilkan widget layar yang sesuai
        ),
      ),
    );
  }
}
