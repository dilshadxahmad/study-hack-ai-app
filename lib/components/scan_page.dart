import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/constants/my_images.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/widgets/buttons/primary_button_w_icon.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyImages.mathBG),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            EnglishText.scanToSolve,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: MyColors.white,
                ),
          ),
          SizedBox(height: 32.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PrimaryButtonWIcon(
                width: 178.w,
                height: 93.h,
                onPressed: () {},
                icon: Container(
                  padding: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                    color: MyColors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(60.r),
                  ),
                  child: SvgPicture.asset(MyIcons.math),
                ),
                label: Text(
                  EnglishText.mathProblem,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: MyColors.white,
                      ),
                ),
              ),
              PrimaryButtonWIcon(
                width: 178.w,
                height: 93.h,
                backgroundColor: MyColors.secondaryPink,
                onPressed: () {},
                icon: Container(
                  padding: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                    color: MyColors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(60.r),
                  ),
                  child: SvgPicture.asset(MyIcons.text),
                ),
                label: Text(
                  EnglishText.textBaseProblem,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: MyColors.white,
                      ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
