import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;
  final double height;
  final double borderRadius;

  CustomButton({
    required this.text,
    required this.onTap,
    this.buttonColor = Colors.blueAccent,
    this.textColor = Colors.white,
    this.height = 60.0,
    this.borderRadius = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: buttonColor,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
