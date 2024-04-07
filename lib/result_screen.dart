import 'package:flutter/material.dart';

import 'package:quiz/data/question.dart'; // Mengimpor model data Question
import 'package:quiz/questions_summary/questions_summary.dart'; // Mengimpor widget QuestionsSummary
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart; // Fungsi untuk me-restart kuis
  final List<String> chosenAnswers; // Daftar jawaban yang dipilih oleh pengguna

  // Fungsi untuk menghasilkan data ringkasan hasil kuis
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    // Iterasi melalui daftar jawaban yang dipilih
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // Menghitung jumlah total pertanyaan
    final numTotalQuestions = questions.length;
    // Menghitung jumlah pertanyaan yang dijawab dengan benar
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    // Membuat tampilan hasil kuis
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan jumlah pertanyaan yang dijawab dengan benar
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 46, 10, 73),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // Menampilkan ringkasan hasil kuis menggunakan widget QuestionsSummary
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            // Tombol untuk me-restart kuis
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
