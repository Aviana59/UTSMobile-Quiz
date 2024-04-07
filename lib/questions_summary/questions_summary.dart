import 'package:flutter/material.dart';

import 'package:quiz/questions_summary/summary_item.dart'; // Mengimpor widget SummaryItem

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData; // Data ringkasan hasil kuis

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, // Tinggi kontainer
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(
                  data); // Menampilkan setiap item ringkasan menggunakan widget SummaryItem
            },
          ).toList(),
        ),
      ),
    );
  }
}
