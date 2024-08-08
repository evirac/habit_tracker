import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Function()? onTap;

  const ButtonComponent({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
