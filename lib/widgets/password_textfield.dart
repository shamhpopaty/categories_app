
import 'package:flutter/material.dart';

class AuthPasswordTextFormField extends StatelessWidget {
  final String? hintText;
  const AuthPasswordTextFormField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child:TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              hintStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              hintText: hintText,
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              ),),

    );
  }
}
