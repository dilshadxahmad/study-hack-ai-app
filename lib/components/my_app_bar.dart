import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/utils/english_text.dart';

class MyAppBar extends AppBar {
  final bool hasDrawer;
  final bool hasActions;
  MyAppBar({this.hasDrawer = false, this.hasActions = false, super.key})
      : super(
          leading: Padding(
            padding: EdgeInsets.only(left: 24.h, top: 24.h, bottom: 24.h),
            child: Builder(
              builder: (context) {
                return IconButton(
                  style: Theme.of(context).iconButtonTheme.style?.copyWith(
                        side: MaterialStatePropertyAll(
                          BorderSide(color: MyColors.lightGrey, width: 0.8.h),
                        ),
                      ),
                  constraints: BoxConstraints(maxHeight: 50.h),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () {
                    hasDrawer
                        ? Scaffold.of(context).openDrawer()
                        : Navigator.of(context).pop();
                  },
                  icon: Image.asset(
                      hasDrawer ? MyIcons.drawer : MyIcons.backArrow),
                );
              },
            ),
          ),
          title: const Text(
            EnglishText.appName,
          ),
          actions: [
            if (hasActions)
              Builder(builder: (context) {
                return Padding(
                  padding: EdgeInsets.only(right: 18.w),
                  child: IconButton(
                    style: Theme.of(context).iconButtonTheme.style?.copyWith(
                          backgroundColor:
                              const MaterialStatePropertyAll(MyColors.yellow),
                        ),
                    constraints: BoxConstraints(maxHeight: 50.h),
                    onPressed: () {},
                    icon: Image.asset(
                      MyIcons.crown,
                      height: 50.h,
                    ),
                  ),
                );
              }),
          ],
        );
}
