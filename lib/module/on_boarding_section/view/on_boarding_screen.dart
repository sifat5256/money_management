import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/module/auth_section/view/log_in_screen.dart';
import 'package:money_management/module/auth_section/view/sign_up.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../component/button.dart';
import '../controller/on_boarding_controller.dart';
import '../widget/on_boarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            children: [
              OnboardingPage(
                image: 'lib/utils/assets/business.png',
                title: 'Gain Total Control of your money',
                description: 'Become your own money manager and make every cent count',
              ),
              OnboardingPage(
                image: 'lib/utils/assets/management.png',
                title: 'Know Where your money Goes',
                description: 'Track your transaction easily with categories and financial report',
              ),
              OnboardingPage(
                image: 'lib/utils/assets/financial-planning.png',
                title: 'Planing ahead',
                description: 'Set up your budget for each catagory so you in control',
              ),
            ],
          ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: WormEffect(),
                ),
                const SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: controller.nextPage,
                //   child: Obx(() => Text(controller.pageIndex.value < 2 ? 'Next' : 'Finish')),
                // ),
                CustomButton(
                  text: 'Sign Up',
                  textColor: Colors.white,
                  onTap: () {
                    Get.to(SignUp());
                  },
                  buttonColor: Colors.blueAccent,
                ),
                SizedBox(height: 10,),

                CustomButton(
                  text: 'Log In',
                  textColor: Colors.blueAccent,
                  onTap: () {
Get.to(LogInScreen());
                  },
                  buttonColor: Colors.black12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


