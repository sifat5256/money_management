import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/form_screen.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {

  final List<Map<String, dynamic>> titleIcon = [
    {
      'title': 'Food',
      'icon': Icons.fastfood,
    },
    {
      'title': 'Shopping',
      'icon': Icons.shopping_cart,
    },
    {
      'title': 'Subscription',
      'icon': Icons.subscriptions,
    },
  ];

  final FormController formController = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Map, List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(FormScreen());
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          // ListView.builder(
          //   shrinkWrap: true,
          //   itemCount: titleIcon.length,
          //   itemBuilder: (context, index) {
          //     final items = titleIcon[index];
          //     return Card(
          //       child: ListTile(
          //         leading: Icon(items['icon']),
          //         title: Text(items['title']),
          //       ),
          //     );
          //   },
          // ),
          // Observing the formController items
          Obx(() {
            return Expanded(
              child: ListView.builder(
                itemCount: formController.items.length,
                itemBuilder: (context, index) {
                  final item = formController.items[index];
                  return Card(
                    child: ListTile(
                      title: Text("Name: ${item['name']}"),
                      subtitle: Text("Age: ${item['age']}"),
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
