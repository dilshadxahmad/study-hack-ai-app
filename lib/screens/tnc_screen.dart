import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/components/my_app_bar.dart';
import 'package:study_hack_ai/components/my_drawer.dart';
import 'package:study_hack_ai/utils/english_text.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: EnglishText.termsAndConditions,
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: ListView(
            children: [
              Text(
                EnglishText.longLoremIpsumText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
