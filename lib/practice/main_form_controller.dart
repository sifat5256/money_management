import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class MainFormController extends GetxController {
  var items = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadItems();
  }

  void addItem(String name, String age) {
    items.add({'name': name, 'age': age});
    saveItems();
  }

  void deleteItem(int index) {
    items.removeAt(index);
    saveItems();
  }

  Future<void> saveItems() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String jsonString = jsonEncode(items);
      bool isSaved = await prefs.setString('items', jsonString);
      print('Data saved: $isSaved'); // Debug log
    } catch (e) {
      print('Error saving data: $e'); // Error log
    }
  }

  Future<void> loadItems() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? jsonString = prefs.getString('items');
      if (jsonString != null) {
        List<dynamic> jsonList = jsonDecode(jsonString);
        items.value = List<Map<String, dynamic>>.from(jsonList);
        print('Data loaded: $items'); // Debug log
      } else {
        print('No data found');
      }
    } catch (e) {
      print('Error loading data: $e'); // Error log
    }
  }
}
