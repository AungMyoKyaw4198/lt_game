import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/questions.dart';
import '../widgets/submit_button.dart';
import 'quiz_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(ulgDarkBlue),
                Color(ulgDarkBlue),
                Color(ulgBrightBlue)
              ])),
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
                          width: scrSize.width / 8,
                          height: scrSize.width / 8,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          'ULG',
                          style: TextStyle(
                              fontSize: scrSize.width / 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      'Localization',
                      style: TextStyle(
                          fontSize: scrSize.width / 15,
                          fontFamily: 'EdsMarketMainScript',
                          color: const Color(ulgFlameOrange)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Quiz',
                      style: TextStyle(
                          fontSize: scrSize.width / 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Questionário',
                      style: TextStyle(
                          fontSize: scrSize.width / 25,
                          fontFamily: 'NotoSans',
                          color: Colors.white),
                    ),
                    Text('Concurso',
                        style: TextStyle(
                            fontSize: scrSize.width / 25,
                            fontFamily: 'NotoSans',
                            color: Colors.white)),
                    Text(
                      'Sporrekonkurranse',
                      style: TextStyle(
                          fontSize: scrSize.width / 25,
                          fontFamily: 'NotoSans',
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SubmitButton(
                text: 'START',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => QuizPage(
                        question: questions[0],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: scrSize.height / 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
