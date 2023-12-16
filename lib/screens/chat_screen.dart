import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/components/my_app_bar.dart';
import 'package:study_hack_ai/components/my_drawer.dart';
import 'package:study_hack_ai/utils/english_text.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: EnglishText.chatWithMe,
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              Expanded(
                child: ListView(),
              ),
              const Divider(),
              SizedBox(height: 24.h),
              SizedBox(
                height: 58.h,
                child: TextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
