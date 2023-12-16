import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/screens/chat_screen.dart';

class FloatingRobotButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const FloatingRobotButton({
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: 130.h,
      child: RawMaterialButton(
        onPressed: onPressed ??
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const ChatScreen();
                  },
                ),
              );
            },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Image.asset(MyIcons.chatBot),
      ),
    );
  }
}
