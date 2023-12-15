import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;
  const PageIndicator({required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      width: isActive ? 32.h : 8.h,
      height: 8.h,
      decoration: BoxDecoration(
        color: isActive ? MyColors.primaryBlue : MyColors.lightGrey,
        borderRadius: BorderRadius.circular(8.h),
      ),
    );
  }
}
