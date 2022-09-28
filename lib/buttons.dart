import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {this.color,
      this.textColor,
      this.buttonTapped,
      required this.buttonText});

  final buttonTapped;
  final String buttonText;
  final color;
  final textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
