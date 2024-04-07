import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer, // Menentukan apakah jawaban yang diberikan benar atau salah
    required this.questionIndex, // Indeks pertanyaan
  });

  final int questionIndex; // Indeks pertanyaan
  final bool
      isCorrectAnswer; // Menunjukkan apakah jawaban yang diberikan benar atau salah

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex +
        1; // Nomor pertanyaan (diberikan oleh indeks pertanyaan + 1)
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 92, 164,
                228) // Warna latar belakang untuk jawaban yang benar
            : const Color.fromARGB(255, 180, 55,
                174), // Warna latar belakang untuk jawaban yang salah
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber
            .toString(), // Menampilkan nomor pertanyaan di dalam kontainer
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56), // Warna teks nomor pertanyaan
        ),
      ),
    );
  }
}
