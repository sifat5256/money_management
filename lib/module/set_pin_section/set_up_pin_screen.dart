

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/module/set_pin_section/confirm_pin_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../component/button.dart';

class SetUpPinScreen extends StatefulWidget {
  const SetUpPinScreen({super.key});

  @override
  State<SetUpPinScreen> createState() => _SetUpPinScreenState();
}

class _SetUpPinScreenState extends State<SetUpPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PinCodeTextField(
              appContext: context,
              length:4, // Set the number of PIN code fields
              onChanged: (value) {
                print(value);
              },
              pinTheme: PinTheme(

                shape: PinCodeFieldShape.underline, // Only bottom border
                fieldHeight: 50, // Height of each field
                fieldWidth: 40, // Width of each field
                activeFillColor: Colors.transparent, // Background color for active field
                inactiveFillColor: Colors.transparent, // Background color for inactive field
                selectedFillColor: Colors.transparent, // Background color for selected field
                borderWidth: 2, // Width of the underline border
                activeColor: Colors.white, // Border color for the active field
                inactiveColor: Colors.white, // Border color for inactive fields
                selectedColor: Colors.amberAccent,
                // Border color for the selected field
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'Next',

              textColor: Colors.blueAccent,
              onTap: () {
                Get.to(const ConfirmPinScreen());
              },
              buttonColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
