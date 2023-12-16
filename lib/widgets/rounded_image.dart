import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
      child: Container(
        color: backgroundColor,
        child: Image.asset(
          imageName,
          height: height,
        ),
      ),
    );
  }
}
