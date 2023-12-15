import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';

class FadedContainer extends StatelessWidget {
  final Widget child;
  const FadedContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 72.h,
      ),
      height: 270.h,
      width: 428.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            MyColors.white,
            MyColors.white.withOpacity(0.75),
            MyColors.white.withOpacity(0.50),
            MyColors.white.withOpacity(0),
          ],
          stops: const [
            0.70,
            0.75,
            0.80,
            1,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}
