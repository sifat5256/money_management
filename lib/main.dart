import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/module/auth_section/view/log_in_screen.dart';
import 'package:money_management/module/on_boarding_section/view/on_boarding_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => OnboardingScreen()),
        GetPage(name: '/login', page: () => LogInScreen(),
          transition: Transition.fade, // Built-in fade transition
          transitionDuration: Duration(milliseconds: 500),), // Example login screen
      ],
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
