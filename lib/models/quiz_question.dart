class QuizQuestion {
  const QuizQuestion(this.text, this.answers); //class QuizQuestion untuk menyimpan data soal dan jawaban

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}