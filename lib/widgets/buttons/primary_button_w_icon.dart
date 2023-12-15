import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWIcon extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final Widget label;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? overlayColor;
  const PrimaryButtonWIcon({
    required this.onPressed,
    required this.icon,
    required this.label,
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
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          overlayColor: MaterialStatePropertyAll(overlayColor),
        ),
        icon: icon,
        label: label,
      ),
    );
  }
}
