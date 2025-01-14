

import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  OnboardingPage({required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          SizedBox(
            height: 70,
          ),
          Image.asset(image,height: 350,),
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade500,

              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}