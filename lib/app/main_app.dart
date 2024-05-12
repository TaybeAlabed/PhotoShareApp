import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hypermart/view/layout/botton_nav_screen.dart';
import 'package:hypermart/view/auth/forgetpassword_screen.dart';
import 'package:hypermart/view/auth/login_screen.dart';
import 'package:hypermart/view/auth/resetpassword_screen.dart';
import 'package:hypermart/view/auth/signup_screen.dart';
import 'package:hypermart/view/auth/verification_screen.dart';
import 'package:hypermart/view/start/onboarding_screen.dart';
// import 'package:hypermart/view/screen/home/my_order_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp._internal();
  static const MainApp _instance = MainApp._internal();
  factory MainApp() => _instance;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.lightTheme,
          initialRoute: AppRouteManager.onboarding,
          getPages: PageData().getPages,
        );
      },
    );
  }
}

class PageData {
  List<GetPage> getPages = [
    GetPage(
      name: AppRouteManager.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRouteManager.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRouteManager.signUp,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: AppRouteManager.forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
        name: AppRouteManager.verification,
        page: () => const VerificationScreen()),
    GetPage(
      name: AppRouteManager.resetPassword,
      page: () => const ResetPasswordScreen(),
    ),
    GetPage(
      name: AppRouteManager.bottomNav,
      page: () => const BottomNavScreen(),
    ),
  ];
}
