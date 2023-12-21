import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/screens/chat_1977_screen.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/widgets/message_bubble.dart';

class FloatingRobotButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const FloatingRobotButton({
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed ??
          () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const Chat1977Screen();
                },
              ),
            );
          },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MessageBubble(
                width: 177.w,
                borderRadius: 40.r,
                messageText: EnglishText.hiLetMeKnowWhatCan,
                color: MyColors.lightGrey,
                fontStyle: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                EnglishText.tapToChat,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: MyColors.primaryBlue),
              )
            ],
          ),
          Image.asset(
            MyIcons.chatBot,
            height: 120.h,
          ),
        ],
      ),
    );
  }
}
