import 'package:flutter/material.dart';
import 'package:lt_game/constants/colors.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double? width;
  final double? height;
  final Color? color;
  const SubmitButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.width,
      this.height,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        color: color ?? const Color(ulgFlameOrange),
        width: width ?? scrSize.width / 2,
        height: height ?? scrSize.height / 13,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: scrSize.width / 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
