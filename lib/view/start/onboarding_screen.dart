import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/app_text_constants.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';
import 'package:hypermart/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    physics: const BouncingScrollPhysics(),
                    children: List.generate(
                      APPTextConstatnts.onboarding.length,
                      (index) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 120.h),
                          RichText(
                            text: TextSpan(
                                text: 'Foto',
                                style: FontManager.boldStyle.copyWith(
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Share',
                                    style: FontManager.extraBoldStyle.copyWith(
                                      color: ColorManager.primaryRed,
                                      fontSize: 35,
                                    ),
                                  )
                                ]),
                          ),

                          // SizedBox(height: 10.h),
                          // const Spacer(
                          //   flex: 1,
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //   children: [
                          //     SvgPicture.asset(
                          //       ImageManager.iconOnboarding1,
                          //       width: 50.r,
                          //     ),
                          //     SvgPicture.asset(
                          //       ImageManager.iconOnboarding2,
                          //       width: 50.r,
                          //     ),
                          //   ],
                          // ),
                          SizedBox(height: 50.h),
                          // SvgPicture.asset(
                          //   OnboardingData.onboardingInfo[index].imagePath,
                          //   width: 180.w,
                          // ),
                          Text(
                            APPTextConstatnts.onboarding[index]['head'],
                            style:
                                FontManager.boldStyle.copyWith(fontSize: 20.sp),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQueryManager(context).width / 15),
                            child: Text(
                              APPTextConstatnts.onboarding[index]['subTitle'],
                              style: FontManager.regularStyle
                                  .copyWith(fontSize: 15.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => Container(
                                  width: 10,
                                  height: 10,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: currentPage == index
                                        ? ColorManager.fontBlack
                                        : ColorManager.fontGray,
                                    shape: BoxShape.circle,
                                  ),
                                )),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              alignment: Alignment.center,
                            ),
                            onPressed: () {
                              setState(() {
                                if (currentPage <
                                    APPTextConstatnts.onboarding.length - 1) {
                                  currentPage++;
                                  pageController.animateToPage(
                                    currentPage,
                                    duration: const Duration(milliseconds: 600),
                                    curve: Curves.easeInOut,
                                  );
                                } else {
                                  Get.to(() => const LoginScreen());
                                }
                              });
                              // controller.next();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: context.phoneWidth(),
                              child: Text(
                                currentPage ==
                                        APPTextConstatnts.onboarding.length - 1
                                    ? 'Let’s Get Started'
                                    : 'Next',
                                style: FontManager.boldStyle.copyWith(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(AppRouteManager.login);
                          },
                          child: Text(
                            'Skip',
                            style: FontManager.smallBoldStyle
                                .copyWith(color: ColorManager.primaryRed),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
