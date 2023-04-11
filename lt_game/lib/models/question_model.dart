import '../constants/enums.dart';

class Question {
  final QuizeType quizType;
  final int questionNumber;
  final String question;
  final List<String> answers;
  final String correctAnswer;
  final String correctAnwerExp;
  final String correctAnwerExpHighlight;
  final String correctAnwerExp2;

  Question(
      {required this.quizType,
      required this.questionNumber,
      required this.question,
      required this.answers,
      required this.correctAnswer,
      required this.correctAnwerExp,
      required this.correctAnwerExpHighlight,
      required this.correctAnwerExp2});
}
