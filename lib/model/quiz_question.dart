class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffledlist() {
    final anotherlist = List.of(answers);
    anotherlist.shuffle();
    return anotherlist; 
  }
}
