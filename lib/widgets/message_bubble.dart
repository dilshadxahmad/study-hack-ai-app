import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';

class MessageBubble extends StatelessWidget {
  final Color? color;
  final bool isBottomRightCornerSharp;
  final String messageText;
  final double? width;
  final TextStyle? fontStyle;
  const MessageBubble({
    this.color,
    this.isBottomRightCornerSharp = true,
    required this.messageText,
    this.width,
    this.fontStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 317.w),
      margin: isBottomRightCornerSharp
          ? EdgeInsets.zero
          : EdgeInsets.only(left: 50.w),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      width: width,
      decoration: BoxDecoration(
        color:
            isBottomRightCornerSharp ? color ?? MyColors.milky : MyColors.milky,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
          topLeft:
              isBottomRightCornerSharp ? Radius.circular(20.r) : Radius.zero,
          bottomRight:
              isBottomRightCornerSharp ? Radius.zero : Radius.circular(20.r),
        ),
      ),
      child: Text(
        messageText,
        style: fontStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: isBottomRightCornerSharp
                      ? MyColors.white
                      : MyColors.black,
                ),
      ),
    );
  }
}
