import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onChanged,
    required this.controller,
    this.validator,
    required this.iconData,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final IconData iconData;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.black,
      ),
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      maxLength: 10,
      decoration: InputDecoration(
        // counterText: '',
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        // fillColor: Colors.grey,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(
          iconData,
          color: Colors.orange,
        ),
      ),
    );
  }
}
