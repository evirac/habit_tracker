import 'package:flutter/material.dart';

class ImageButtonComponent extends StatelessWidget {
  final String imagePath;

  const ImageButtonComponent({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your onPressed functionality here
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: Theme.of(context).colorScheme.surfaceDim,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
