import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_hack_ai/components/floating_robot_button.dart';
import 'package:study_hack_ai/components/my_app_bar.dart';
import 'package:study_hack_ai/components/my_drawer.dart';
import 'package:study_hack_ai/components/scan_page.dart';
import 'package:study_hack_ai/components/type_page.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/constants/my_icons.dart';
import 'package:study_hack_ai/utils/english_text.dart';
import 'package:study_hack_ai/view_models/main7_screen_card_vm.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  final _main7CardList = [
    Main7ScreenCardVM(
      id: 1,
      icon: MyIcons.svgEssay,
      title: EnglishText.createEssay,
      subtitle: EnglishText.createInnovativeAndCreativeEssay,
      cardColor: MyColors.primaryBlue,
    ),
    Main7ScreenCardVM(
      id: 1,
      icon: MyIcons.svgCompose,
      title: EnglishText.composeOrReWrite,
      subtitle: EnglishText.composeOrReWriteWithEase,
      cardColor: MyColors.secondaryPink,
    ),
    Main7ScreenCardVM(
      id: 1,
      icon: MyIcons.svgSummary,
      title: EnglishText.generateSummary,
      subtitle: EnglishText.generateSummaryOfAnyTopic,
      cardColor: MyColors.green,
    ),
    Main7ScreenCardVM(
      id: 1,
      icon: MyIcons.svgSolve,
      title: EnglishText.solveOtherTask,
      subtitle: EnglishText.solveAnyTaskWithEase,
      cardColor: MyColors.orange,
    ),
  ];

  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedTabIndex == 1
          ? const FloatingRobotButton()
          : const SizedBox(),
      appBar: MyAppBar(
        hasDrawer: true,
        hasActions: true,
      ),
      drawer: const MyDrawer(),
      body: _selectedTabIndex == 0
          ? const ScanPage()
          : TypePage(main7CardList: _main7CardList),
      bottomNavigationBar: Container(
        margin:
            EdgeInsets.only(left: 24.w, right: 24.w, bottom: 20.w, top: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: MyColors.lightGrey,
        ),
        child: TabBar(
          // padding:
          //     EdgeInsets.only(left: 24.w, right: 24.w, bottom: 20.w, top: 20.w),
          controller: _tabController,
          onTap: (index) {
            setState(() {
              _selectedTabIndex = index;
            });
          },
          tabs: [
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    MyIcons.scan,
                    colorFilter: ColorFilter.mode(
                      _selectedTabIndex == 0 ? MyColors.white : MyColors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  const Text(EnglishText.scan),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    MyIcons.keyboard,
                    colorFilter: ColorFilter.mode(
                      _selectedTabIndex == 1 ? MyColors.white : MyColors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  const Text(EnglishText.type),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
