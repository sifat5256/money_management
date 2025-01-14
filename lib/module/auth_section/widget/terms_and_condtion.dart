import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/terms_and_condition_controller.dart';
 // Ensure correct path to your controller

class TermsAndConditions extends StatelessWidget {
  final TermsController termsController = Get.put(TermsController());

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Obx(() => Checkbox(
            activeColor: Colors.blueAccent,
            hoverColor: Colors.blueAccent,

            value: termsController.isChecked.value,
            onChanged: (bool? newValue) {
              termsController.isChecked.value = newValue ?? false;
            },
          )),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: "I agree to the ",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
                children: [
                  TextSpan(
                    text: "Terms and Conditions",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle terms and conditions tap
                        print('Terms and Conditions tapped');
                      },
                  ),
                  TextSpan(
                    text: " of the expense tracker app.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


