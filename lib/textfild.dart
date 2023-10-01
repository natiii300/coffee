import 'package:flutter/material.dart';

class TextFild extends StatelessWidget {
  const TextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: TextField(
        style: TextStyle(color: Colors.yellow),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 226, 220, 220)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 224, 81, 81)),
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
        ),
      ),
    );
  }
}
