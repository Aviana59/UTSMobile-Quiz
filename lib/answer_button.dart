import 'package:flutter/material.dart';

//Fungsi untuk klik tombol jawaban
class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText; // Teks jawaban
  final void Function() onTap; // Fungsi yang dipanggil saat tombol ditekan

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, // Memanggil fungsi onTap saat tombol ditekan
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor:
            const Color.fromARGB(255, 33, 1, 95), // Warna latar belakang tombol
        foregroundColor: Colors.white, // Warna untuk teks
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // Bentuk tombol
        ),
      ),
      child: Text(
        answerText, // Menampilkan teks jawaban di dalam tombol
        textAlign: TextAlign.center,
      ),
    );
  }
}
