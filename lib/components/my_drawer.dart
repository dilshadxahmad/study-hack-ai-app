import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/screens/privacy_policy_screen.dart';
import 'package:study_hack_ai/screens/tnc_screen.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/widgets/buttons/transparent_button.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    EnglishText.menuSettings,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Image.asset(
                      MyIcons.forwardArrow,
                      height: 30.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 74.h),
              SizedBox(
                height: 400.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _getTransparentButton(
                      onPressed: () {},
                      icon: MyIcons.contactUs,
                      text: EnglishText.contactUs,
                    ),
                    const Divider(),
                    _getTransparentButton(
                      onPressed: () {},
                      icon: MyIcons.rateUs,
                      text: EnglishText.rateUs,
                    ),
                    const Divider(),
                    _getTransparentButton(
                      onPressed: () {},
                      icon: MyIcons.restorePurchases,
                      text: EnglishText.restorePurchases,
                    ),
                    const Divider(),
                    _getTransparentButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const TermsAndConditionsScreen();
                            },
                          ),
                        );
                      },
                      icon: MyIcons.termsConditions,
                      text: EnglishText.termsAndConditions,
                    ),
                    const Divider(),
                    _getTransparentButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const PrivacyPolicyScreen();
                            },
                          ),
                        );
                      },
                      icon: MyIcons.privacyPolicy,
                      text: EnglishText.privacyPolicy2,
                    ),
                    const Divider(),
                  ],
                ),
              ),
              Expanded(
                  child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      MyIcons.appIcon,
                      height: 50.sp,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      EnglishText.appVersion100,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  TransparentButton _getTransparentButton({
    required String icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return TransparentButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(icon),
          SizedBox(width: 16.w),
          Text(text),
        ],
      ),
    );
  }
}
