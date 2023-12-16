import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/components/faded_container.dart';
import 'package:study_hack_ai/components/page_indicator.dart';
import 'package:study_hack_ai/constants/my_images.dart';
import 'package:study_hack_ai/navigation/app_routes.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/view_models/onboarding_screen_vm.dart';
import 'package:study_hack_ai/widgets/buttons/primary_button.dart';
import 'package:study_hack_ai/widgets/buttons/secondary_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _onboardingScreenVMlist = [
    OnboardingScreenVM(
      id: 1,
      image: MyImages.onboardingScreenSS1,
      title: EnglishText.scanToSolveProblems,
      subtitle: EnglishText.solveYourProblemsQuickly,
    ),
    OnboardingScreenVM(
      id: 2,
      image: MyImages.onboardingScreenSS2,
      title: EnglishText.chatWithAI,
      subtitle: EnglishText.chatWithOurSmartIntelligence,
    ),
    OnboardingScreenVM(
      id: 3,
      image: MyImages.onboardingScreenSS3,
      title: EnglishText.multipleFeaturesOnYour,
      subtitle: EnglishText.getSolutionOfAnyProblems,
    ),
  ];
  final _pageController = PageController();
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 30.h,
                right: -130.w,
                child: SizedBox(
                  width: 516.w,
                  child: Image.asset(MyImages.onboardingScreenBG),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 670.h,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      itemCount: _onboardingScreenVMlist.length,
                      itemBuilder: (context, index) {
                        index = _selectedIndex;
                        return Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            SizedBox(
                              width: 280.w,
                              child: Image.asset(
                                  _onboardingScreenVMlist[index].image),
                            ),
                            Positioned(
                              bottom: 0,
                              child: FadedContainer(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      _onboardingScreenVMlist[index].title,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                    ),
                                    Text(
                                      _onboardingScreenVMlist[index].subtitle,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        _onboardingScreenVMlist.length,
                        (index) => PageIndicator(
                          isActive: _selectedIndex == index,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SizedBox(
                      child: Column(
                        children: [
                          PrimaryButton(
                            onPressed: () {
                              if (_selectedIndex < 2) {
                                setState(() {
                                  _pageController.animateToPage(
                                    _selectedIndex + 1,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                });
                              } else {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.mainScreen);
                              }
                            },
                            child: const Text(EnglishText.next),
                          ),
                          SizedBox(height: 12.h),
                          SecondaryButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.mainScreen);
                            },
                            child: const Text(EnglishText.skip),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
