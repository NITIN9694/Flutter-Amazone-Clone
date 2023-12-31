import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFiled({super.key,required this.controller,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (val){

      },
      decoration:InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38
          )
        ),
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38
          )
        ),

      ),
    );
  }
}
