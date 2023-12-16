import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_images.dart';
import 'package:study_hack_ai/navigation/app_routes.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/widgets/buttons/primary_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    EnglishText.welcomeTo,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    EnglishText.appName,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 87.h,
              ),
              Align(
                child: SizedBox(
                  width: 350.w,
                  child: Image.asset(
                    MyImages.splashScreenBGimage,
                  ),
                ),
              ),
              SizedBox(
                height: 87.h,
              ),
              PrimaryButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.onboardingScreen);
                },
                child: const Text(EnglishText.letsGetStarted),
              ),
              SizedBox(
                height: 22.h,
              ),
              Align(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      EnglishText.byRegisteringYouAccept,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.privacyPolicyScreen);
                      },
                      child: Text(
                        EnglishText.privacyPolicy,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
