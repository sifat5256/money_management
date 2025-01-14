

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/module/auth_section/view/sign_up.dart';

import '../../../component/button.dart';
import '../../../component/text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text("Forgot Password"),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0, // Add elevation if you want a shadow effect
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text("Don't worry,enter your email .I will send you a link to re set your password",style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
            fontWeight: FontWeight.w600
          ),),
          const SizedBox(
            height: 50,
          ),

          CustomTextField(
            title: "Email",
            prefixIcon: Icons.email_outlined,
          ),

          const SizedBox(
            height: 20,
          ),


          CustomButton(
            text: 'Continue',

            textColor: Colors.white,
            onTap: () {
              //Get.to(const Verification());
            },
            buttonColor: Colors.blueAccent,
          ),






        ],
      ),
    ),
    );
  }
}
