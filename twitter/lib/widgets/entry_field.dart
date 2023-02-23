import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomEntryField extends StatelessWidget {
  String hint;
  TextEditingController controller;
  bool isPassword = false;
  CustomEntryField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: hint,
      ),
    );
  }
}
