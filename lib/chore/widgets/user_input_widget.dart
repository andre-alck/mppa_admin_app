import 'package:flutter/material.dart';

class UserInputWidget extends StatelessWidget {
  const UserInputWidget({
    Key? key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.icon,
  }) : super(
          key: key,
        );

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final IconData? icon;

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blue.shade100,
        suffixIcon: Icon(
          icon,
        ),
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}
