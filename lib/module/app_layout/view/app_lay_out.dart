import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/module/app_lay_out_pages/budget/view/budget_screen.dart';
import 'package:money_management/module/app_lay_out_pages/profile/view/profile_screen.dart';
import 'package:money_management/module/app_lay_out_pages/transaction/view/transaction_screen.dart';

import '../../app_lay_out_pages/home/view/home_screen.dart';
import '../controller/app_lay_out_controller.dart';

class AppLayOutScreen extends StatefulWidget {
  const AppLayOutScreen({super.key});

  @override
  State<AppLayOutScreen> createState() => _AppLayOutScreenState();
}

class _AppLayOutScreenState extends State<AppLayOutScreen> {
  final AppLayOutController appLayOutController = Get.put(AppLayOutController());

  final List<Widget> screens = [
    const HomeScreen(),
    const TransactionScreen(),
    const BudgetScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications,color: Colors.blueAccent,size: 32,),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'October',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
        centerTitle: true,
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          print("FAB Pressed");
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx(() {
        return screens[appLayOutController.selectedIndex.value];
      }),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Home Tab
            Obx(() {
              return GestureDetector(
                onTap: () {
                  appLayOutController.changeTabIndex(0);
                },
                child: Image.asset(
                  appLayOutController.selectedIndex.value == 0
                      ? "lib/utils/icon_image/home-button.png"
                      : "lib/utils/icon_image/home.png",
                  height: 30,
                ),
              );
            }),
            // Transaction Tab
            Obx(() {
              return GestureDetector(
                onTap: () {
                  appLayOutController.changeTabIndex(1);
                },
                child: Image.asset(
                  appLayOutController.selectedIndex.value == 1
                      ? "lib/utils/icon_image/transaction (1).png"
                      : "lib/utils/icon_image/transaction (2).png",
                  height: 35,
                ),
              );
            }),
            const SizedBox(width: 50),
            // Budget Tab
            Obx(() {
              return GestureDetector(
                onTap: () {
                  appLayOutController.changeTabIndex(2);
                },
                child: Image.asset(
                  appLayOutController.selectedIndex.value == 2
                      ? "lib/utils/icon_image/pie-chart (1).png"
                      : "lib/utils/icon_image/pie-chart.png",
                  height: 30,
                ),
              );
            }),
            // Profile Tab
            Obx(() {
              return GestureDetector(
                onTap: () {
                  appLayOutController.changeTabIndex(3);
                },
                child: Image.asset(
                  appLayOutController.selectedIndex.value == 3
                      ? "lib/utils/icon_image/user (1).png"
                      : "lib/utils/icon_image/user.png",
                  height: 30,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
