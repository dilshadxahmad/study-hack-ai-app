import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/models/message.dart';
import 'package:study_hack_ai/models/user.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/widgets/custom_text_field.dart';
import 'package:study_hack_ai/widgets/message_bubble.dart';
import 'package:study_hack_ai/widgets/rounded_image.dart';

class ChatView extends StatefulWidget {
  final List<Message> messageList;
  final Color primaryColor;
  const ChatView({
    required this.messageList,
    required this.primaryColor,
    super.key,
  });

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final _messageTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment:
                        widget.messageList[index].senderId == currentUser.id
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                    children: [
                      if (widget.messageList[index].senderId != currentUser.id)
                        Row(
                          children: [
                            RoundedImage(
                              backgroundColor: widget.primaryColor,
                              imageName: MyIcons.robot,
                              height: 42.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              widget.messageList[index].senderName,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color: widget.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      MessageBubble(
                        color: widget.primaryColor,
                        isSentBubble: widget.messageList[index].senderId ==
                            currentUser.id,
                        messageText: widget.messageList[index].messageText,
                      ),
                      if (index == (widget.messageList.length - 1))
                        Padding(
                          padding: widget.messageList[index].senderId ==
                                  currentUser.id
                              ? EdgeInsets.zero
                              : EdgeInsets.only(
                                  left: 50.w,
                                ),
                          child: IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .removeCurrentSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        MyIcons.tick,
                                        color: MyColors.white,
                                        height: 30.h,
                                      ),
                                      SizedBox(width: 8.w),
                                      const Text(EnglishText.copied),
                                    ],
                                  ),
                                  duration: const Duration(seconds: 1),
                                ),
                              );
                            },
                            icon: Image.asset(
                              MyIcons.copy,
                              height: 30.h,
                            ),
                          ),
                        ),
                      SizedBox(height: 18.h),
                    ],
                  );
                },
                itemCount: widget.messageList.length,
              ),
            ),
            const Divider(),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _messageTextController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (_messageTextController.text.isNotEmpty) {
                      setState(() {
                        widget.messageList.add(
                          Message(
                            senderId: 1,
                            senderName: "Me",
                            messageText: _messageTextController.text,
                          ),
                        );
                        _messageTextController.clear();
                      });
                    }
                  },
                  icon: Image.asset(
                    MyIcons.send,
                    height: 30.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
