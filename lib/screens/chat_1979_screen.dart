import 'package:flutter/material.dart';
import 'package:study_hack_ai/components/chat_view.dart';
import 'package:study_hack_ai/components/my_app_bar.dart';
import 'package:study_hack_ai/components/my_drawer.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/models/message.dart';
import 'package:study_hack_ai/utils/english_text.dart';

class Chat1979Screen extends StatelessWidget {
  const Chat1979Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MyAppBar(
        titleText: EnglishText.composeOrReWrite,
      ),
      drawer: const MyDrawer(),
      body: ChatView(
        messageList: screen1979messagesList,
        primaryColor: MyColors.secondaryPink,
      ),
    );
  }
}
