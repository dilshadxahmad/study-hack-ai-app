import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_icons.dart';

class FloatingRobotButton extends StatelessWidget {
  const FloatingRobotButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: 130.h,
      child: RawMaterialButton(
        onPressed: () {},
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Image.asset(MyIcons.chatBot),
      ),
    );
  }
}
