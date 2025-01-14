import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/module/auth_section/view/log_in_screen.dart';
import 'package:money_management/module/auth_section/view/verification_screen.dart';

import '../../../component/button.dart';
import '../../../component/text_field.dart';
import '../widget/terms_and_condtion.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
            CustomTextField(
              title: "Name",
              prefixIcon:  Icons.person_outline,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              title: "Email",
              prefixIcon: Icons.email_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              title: "Password",
              prefixIcon: Icons.lock_outline,
            ),
            const SizedBox(
              height: 10,
            ),
            TermsAndConditions(),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              text: 'Sign Up',
              textColor: Colors.white,
              onTap: () {
                Get.to(const Verification());
              },
              buttonColor: Colors.blueAccent,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Or with",style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16
            ),),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                     border: Border.all(
                    color: Colors.blue, // Border color
                    width: 1.0, // Border width
                  ),
                    borderRadius: BorderRadius.circular(15),


                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("lib/utils/assets/google.png",height: 30,),
                        SizedBox(width: 30,),
                        const Text(
                          "Sign In with Goggle",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: (){
                     Get.to(LogInScreen());
                    },
                    child: Text("Log In",style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),))
              ],
            ),


          ],
        ),
      ),
    );
  }
}


