

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../component/button.dart';

class ConfirmPinScreen extends StatefulWidget {
  const ConfirmPinScreen({super.key});

  @override
  State<ConfirmPinScreen> createState() => _ConfirmPinScreenState();
}

class _ConfirmPinScreenState extends State<ConfirmPinScreen> {
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
              text: 'Confirm',

              textColor: Colors.blueAccent,
              onTap: () {
               // Get.to(const SetUpPinScreen());
              },
              buttonColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
