import 'package:flutter/material.dart';
import 'package:lt_game/constants/colors.dart';
import 'package:lt_game/constants/questions.dart';
import 'package:lt_game/pages/answer_page.dart';
import 'package:lt_game/pages/end_page.dart';

import '../models/question_model.dart';

class QuizPage extends StatefulWidget {
  final Question question;
  const QuizPage({Key? key, required this.question}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool userSelected = false;

  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: scrSize.width / 10,
                        height: scrSize.width / 10,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'ULG',
                        style: TextStyle(
                            fontSize: scrSize.width / 20,
                            color: const Color(ulgDarkBlue),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: SizedBox(
                  width: scrSize.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question ${widget.question.questionNumber}',
                        style: TextStyle(
                            fontSize: scrSize.width / 30,
                            fontWeight: FontWeight.bold,
                            color: const Color(ulgDarkBlue)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.question.question,
                        style: TextStyle(
                            fontSize: scrSize.width / 40,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: scrSize.height / 13,
                      ),
                      Column(
                        children: List.generate(widget.question.answers.length,
                            (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                userSelected = true;
                              });
                              if (widget.question.answers[index] ==
                                  widget.question.correctAnswer) {
                                Future.delayed(const Duration(seconds: 1), () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          AnswerPage(question: widget.question),
                                    ),
                                  );
                                });
                              } else {
                                Future.delayed(const Duration(seconds: 1), () {
                                  if (widget.question.questionNumber == 10) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const Endpage(),
                                      ),
                                    );
                                  } else {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            QuizPage(
                                                question: questions[widget
                                                    .question.questionNumber]),
                                      ),
                                    );
                                  }
                                });
                              }
                            },
                            child: userSelected
                                ? Container(
                                    height: scrSize.height / 13,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: widget.question.answers[index] ==
                                              widget.question.correctAnswer
                                          ? const Color(ulgGreen)
                                          : Colors.red,
                                    ),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Text(
                                          widget.question.answers[index],
                                          softWrap: true,
                                          style: TextStyle(
                                              fontSize: scrSize.width / 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: scrSize.height / 13,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: const BoxDecoration(
                                      color: Color(ulgFlameOrange),
                                    ),
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Text(
                                          widget.question.answers[index],
                                          softWrap: true,
                                          style: TextStyle(
                                              fontSize: scrSize.width / 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                          );
                        }),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
