import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/config/theme_config.dart';
import 'package:study_hack_ai/navigation/app_routes.dart';
import 'package:study_hack_ai/navigation/my_router.dart';
import 'package:study_hack_ai/screens/splash_screen.dart';

class StudyHackAiApp extends StatelessWidget {
  const StudyHackAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeConfig.lightTheme(),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          initialRoute: AppRoutes.splashScreen,
          onGenerateRoute: MyRouter.generateRoute,
        );
      },
    );
  }
}
