import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextFieldComponent(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.surfaceDim)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.surfaceTint)),
          fillColor: Theme.of(context).colorScheme.surfaceBright,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondaryFixedDim,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
