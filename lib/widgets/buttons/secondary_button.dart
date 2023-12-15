import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final double? width;
  final double? height;
  const SecondaryButton(
      {required this.onPressed,
      required this.child,
      this.width,
      this.height,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      height: height ?? 58.h,
      child: OutlinedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
