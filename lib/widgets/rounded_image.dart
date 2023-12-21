import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imageName;
  final double? borderRadius;
  final double? height;
  final Color? backgroundColor;
  const RoundedImage({
    required this.imageName,
    this.borderRadius,
    this.height,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: Image.asset(
        imageName,
        height: height,
      ),
    );
  }
}
