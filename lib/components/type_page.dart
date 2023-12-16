import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/navigation/app_routes.dart';
import 'package:study_hack_ai/view_models/main7_screen_card_vm.dart';

class TypePage extends StatelessWidget {
  const TypePage({
    super.key,
    required List<Main7ScreenCardVM> main7CardList,
  }) : _main7CardList = main7CardList;

  final List<Main7ScreenCardVM> _main7CardList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 20.h,
        ),
        itemCount: _main7CardList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.of(context).pushNamed(AppRoutes.chat1978Screen);
                  break;
                case 1:
                  Navigator.of(context).pushNamed(AppRoutes.chat1979Screen);
                  break;
                case 2:
                  Navigator.of(context).pushNamed(AppRoutes.chat1980Screen);
                  break;
                case 3:
                  Navigator.of(context).pushNamed(AppRoutes.chat1981Screen);
                  break;

                default:
              }
            },
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                margin: EdgeInsets.only(bottom: 16.h),
                color: _main7CardList[index].cardColor,
                child: Row(
                  children: [
                    SizedBox(width: 20.w),
                    Container(
                      padding: EdgeInsets.all(16.h),
                      decoration: BoxDecoration(
                        color: MyColors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(60.r),
                      ),
                      child: SvgPicture.asset(_main7CardList[index].icon),
                    ),
                    SizedBox(width: 25.w),
                    SizedBox(
                      height: 100.h,
                      width: 253.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _main7CardList[index].title,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(color: MyColors.white),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            _main7CardList[index].subtitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: MyColors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
