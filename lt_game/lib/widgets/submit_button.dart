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
        width: width ?? scrSize.width / 5,
        height: height ?? scrSize.width / 13,
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
