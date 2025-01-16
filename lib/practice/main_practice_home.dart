

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/practice/main_form_controller.dart';
import 'package:money_management/practice/main_form_screen.dart';

class MainPracticeHome extends StatefulWidget {
  const MainPracticeHome({super.key});

  @override
  State<MainPracticeHome> createState() => _MainPracticeHomeState();
}

class _MainPracticeHomeState extends State<MainPracticeHome> {
  
  final MainFormController mainFormController=Get.put(MainFormController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main practice home"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.to(MainFormScreen());
          },
          child: Icon(Icons.add),
      ),
      body: Column(
        children: [
Obx((){
  return Expanded(
    child: ListView.builder(
      itemCount: mainFormController.items.length,
        
        itemBuilder: (context,index){
        final everyItem=mainFormController.items[index];
        return ListTile(
          
          title: Text(everyItem['name']),
          subtitle: Text(everyItem['age']),
          trailing: IconButton(
              onPressed: (){
                mainFormController.deleteItem(index);
                
              }, icon: Icon(Icons.delete)),
        );
        }),
  );
}
)
        ],
      ),
    );
  }
}
