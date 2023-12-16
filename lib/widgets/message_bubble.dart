import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';

class MessageBubble extends StatelessWidget {
  final Color? color;
  final bool isSentBubble;
  final String messageText;
  const MessageBubble({
    this.color,
    required this.isSentBubble,
    required this.messageText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 317.w),
      margin: isSentBubble ? EdgeInsets.zero : EdgeInsets.only(left: 50.w),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: isSentBubble ? color ?? MyColors.milky : MyColors.milky,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
          topLeft: isSentBubble ? Radius.circular(20.r) : Radius.zero,
          bottomRight: isSentBubble ? Radius.zero : Radius.circular(20.r),
        ),
      ),
      child: Text(
        messageText,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isSentBubble ? MyColors.white : MyColors.black,
            ),
      ),
    );
  }
}
