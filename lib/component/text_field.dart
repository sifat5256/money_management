

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String title;
  final IconData prefixIcon;

   CustomTextField({
    super.key, required this.title, required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: title,
              border: InputBorder.none,
              prefixIcon: Icon(prefixIcon,color: Colors.grey[500]
                ,),
            ),
          ),
        ),
      ),
    );
  }
}