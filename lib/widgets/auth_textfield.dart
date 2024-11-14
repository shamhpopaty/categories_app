

import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final String? hintText;
  final IconData? iconPrefix;
  const AuthTextFormField({
    super.key,
    this.hintText,
    this.iconPrefix, required String textBox,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black, // Change typing color here
        ),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          hintText: hintText,
          prefixIcon: Icon(
            iconPrefix,
            color: Colors.grey,
          ),

        ),
      ),
    );
  }
}
