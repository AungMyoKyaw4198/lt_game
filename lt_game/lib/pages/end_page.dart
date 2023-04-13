import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/submit_button.dart';
import 'menu_page.dart';

class Endpage extends StatefulWidget {
  const Endpage({Key? key}) : super(key: key);

  @override
  State<Endpage> createState() => _EndpageState();
}

class _EndpageState extends State<Endpage> {
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
                          width: scrSize.width / 6,
                          height: scrSize.width / 6,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          'ULG',
                          style: TextStyle(
                              fontSize: scrSize.width / 10,
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
                      'Congratulations',
                      style: TextStyle(
                          fontSize: scrSize.width / 8,
                          fontFamily: 'EdsMarketMainScript',
                          color: const Color(ulgFlameOrange)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: scrSize.width / 1.5,
                      child: Center(
                        child: Text(
                          "You're an eLearning Localization Champ!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: scrSize.width / 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SubmitButton(
                text: 'BACK TO HOME',
                width: scrSize.width / 2,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MenuPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: scrSize.height / 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
