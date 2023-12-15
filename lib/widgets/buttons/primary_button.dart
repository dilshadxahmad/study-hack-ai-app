import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? overlayColor;
  const PrimaryButton({
    required this.onPressed,
    required this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.overlayColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      height: height ?? 58.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          overlayColor: MaterialStatePropertyAll(overlayColor),
        ),
        child: child,
      ),
    );
  }
}
