// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DefaultTextFormFeild extends StatelessWidget {
  final Function()? onPressed;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  TextInputType? keyboardType;
  final int maxLine;
  final String hintText;
  final double height;
  DefaultTextFormFeild({
    super.key, this.onPressed, this.maxLine = 1, this.keyboardType, this.validator, this.controller, this.height = 60, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: height,
      child: TextFormField(
        controller: controller,
        maxLines: maxLine,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: keyboardType,
        validator: validator,
        onSaved: (value) {},
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(14),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
