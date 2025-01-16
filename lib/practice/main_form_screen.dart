

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_management/practice/main_form_controller.dart';

class MainFormScreen extends StatefulWidget {
  const MainFormScreen({super.key});

  @override
  State<MainFormScreen> createState() => _MainFormScreenState();
}

class _MainFormScreenState extends State<MainFormScreen> {

  final _formkey=GlobalKey<FormState>();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController ageController=TextEditingController();
  final MainFormController mainFormController = Get.put(MainFormController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an age";
                  }
                  return null;
                },
          controller: nameController,

             decoration: InputDecoration(
               hintText: "Name",
               border: OutlineInputBorder(),

             ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an age";
                  }
                  return null;
                },
          controller: ageController,

                decoration: InputDecoration(
                  hintText: "age",
                  border: OutlineInputBorder(),

                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      mainFormController.addItem(

                          nameController.text, ageController.text);
                    }
                    Get.back();

                  },
                  child: Text("submit"))
            ],
          ),
        ),
      ),
    );
  }
}
