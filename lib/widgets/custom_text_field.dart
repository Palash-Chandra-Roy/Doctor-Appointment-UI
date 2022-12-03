import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  bool obscureText;
  bool autocurrent;
  final ValueChanged<String>? onChanged;
  String? Function(String?)? validator;
  String? hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool? filled;
  Color? fillColor;
  bool readOnly;
  bool autofocus;
  CustomTextField(
      {Key? key,
        this.autocurrent = false,
        this.controller,
        this.onChanged,
        this.validator,
        this.obscureText = false,
        this.keyboardType,
        this.textInputAction,
        this.suffixIcon,
        this.hintText,
        this.prefixIcon,
        this.fillColor,
        this.filled = false,
        this.readOnly = false,
        this.autofocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      autocorrect: autocurrent,
      controller: controller,
      readOnly: readOnly,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none),
          suffixIcon: suffixIcon,
          suffixStyle: TextStyle(fontSize:(17)),
          hintText: hintText,
          filled: filled,
          fillColor: fillColor,
          prefixIcon: prefixIcon,
          prefixStyle: TextStyle(fontSize: (17)),
          hintStyle: TextStyle(
            fontSize: (14),
            color: Colors.grey.shade400,
          )),
    );
  }
}