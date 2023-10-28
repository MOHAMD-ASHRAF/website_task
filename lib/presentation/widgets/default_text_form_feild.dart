// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DefaultTextFormFeild extends StatelessWidget {
  final Function()? onPressed;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  TextInputType? keyboardType;
  final int maxLine;
  final double height;
  DefaultTextFormFeild({
    super.key, this.onPressed, this.maxLine = 1, this.keyboardType, this.validator, this.controller, this.height = 60,
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
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(24),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
