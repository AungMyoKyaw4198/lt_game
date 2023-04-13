import 'package:flutter/material.dart';
import 'package:lt_game/pages/quiz_page.dart';
import 'package:lt_game/widgets/submit_button.dart';

import '../constants/colors.dart';
import '../constants/questions.dart';
import '../models/question_model.dart';
import 'end_page.dart';

class AnswerPage extends StatefulWidget {
  final Question question;
  const AnswerPage({Key? key, required this.question}) : super(key: key);

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
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
                        width: scrSize.width / 6,
                        height: scrSize.width / 6,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'ULG',
                        style: TextStyle(
                            fontSize: scrSize.width / 10,
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
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Correct Answer',
                        style: TextStyle(
                            fontSize: scrSize.width / 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(ulgDarkBlue)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: scrSize.height / 13,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Color(ulgBrightBlue),
                        ),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              widget.question.correctAnswer,
                              style: TextStyle(
                                  fontSize: scrSize.width / 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: widget.question.correctAnwerExp,
                                style: TextStyle(
                                    fontSize: scrSize.width / 23,
                                    color: const Color(ulgGery1),
                                    fontWeight: FontWeight.w300),
                              ),
                              TextSpan(
                                text: widget.question.correctAnwerExpHighlight,
                                style: TextStyle(
                                    fontSize: scrSize.width / 23,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                text: widget.question.correctAnwerExp2,
                                style: TextStyle(
                                    fontSize: scrSize.width / 23,
                                    color: const Color(ulgGery1),
                                    fontWeight: FontWeight.w300),
                              ),
                            ]),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            SubmitButton(
                text: widget.question.questionNumber == 10
                    ? "FINISH"
                    : "NEXT QUESTION",
                width: scrSize.width / 2,
                onTap: () {
                  if (widget.question.questionNumber == 10) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Endpage(),
                      ),
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => QuizPage(
                            question:
                                questions[widget.question.questionNumber]),
                      ),
                    );
                  }
                }),
            SizedBox(
              height: scrSize.height / 13,
            ),
          ],
        ),
      ),
    );
  }
}
