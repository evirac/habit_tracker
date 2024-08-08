import 'package:flutter/material.dart';

class ImageButtonComponent extends StatelessWidget {
  final String imagePath;
  const ImageButtonComponent({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.surfaceDim),
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.onInverseSurface),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
