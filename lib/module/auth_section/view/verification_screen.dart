

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../component/button.dart';
import '../../set_pin_section/set_up_pin_screen.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, // Add elevation if you want a shadow effect
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.27,
              ),
              const Text("Enter Your Verification Code",style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),),
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
                  activeColor: Colors.blue, // Border color for the active field
                  inactiveColor: Colors.grey, // Border color for inactive fields
                  selectedColor: Colors.blue,
                  // Border color for the selected field
                ),
              ),
              SizedBox(
                height: 30,
              ),
              const Text("04:59",style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
              const  SizedBox(
                height: 8,
              ),
              const Text("Send your verification code in your email,you can check inbox",style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),),
              const  SizedBox(
                height: 8,
              ),
              const Text("I didn't get the code please send again",style: TextStyle(
                color: Colors.blueAccent,

                fontSize: 16,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blueAccent

              ),),
             SizedBox(
               height: 70,
             ),
              CustomButton(
                text: 'Verification',
                textColor: Colors.white,
                onTap: () {
                  Get.to(const SetUpPinScreen());
                },
                buttonColor: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
