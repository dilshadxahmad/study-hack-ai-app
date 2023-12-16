import 'package:flutter/material.dart';
import 'package:study_hack_ai/components/chat_view.dart';
import 'package:study_hack_ai/components/my_app_bar.dart';
import 'package:study_hack_ai/components/my_drawer.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/models/message.dart';
import 'package:study_hack_ai/utils/english_text.dart';

class Chat1978Screen extends StatelessWidget {
  const Chat1978Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MyAppBar(
        titleText: EnglishText.createEssay,
      ),
      drawer: const MyDrawer(),
      body: ChatView(
        messageList: screen1978messagesList,
        primaryColor: MyColors.primaryBlue,
      ),
    );
  }
}
