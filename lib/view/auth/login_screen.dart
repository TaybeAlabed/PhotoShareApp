import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';

import 'package:hypermart/view/auth/bottomText_widget.dart';
import 'package:hypermart/view/auth/google_widget.dart';
import 'package:hypermart/view/auth/mytextfaild_widget.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      SizedBox(height: 10.h),
                      SvgPicture.asset(
                        ImageManager.iconAuth,
                        width: 130.w,
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        'Log In',
                        style: FontManager.boldStyle.copyWith(fontSize: 18.sp),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        'Please type your information',
                        style:
                            FontManager.regularStyle.copyWith(fontSize: 14.sp),
                      ),
                      SizedBox(height: 16.h),
                      MyTextFaildWidget(
                        title: 'Email Address',
                        textInputType: TextInputType.emailAddress,
                        textEditingController: TextEditingController(),
                      ),
                      SizedBox(height: 16.h),
                      MyTextFaildWidget(
                          title: 'Password',
                          textEditingController: TextEditingController()),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              alignment: Alignment.center,
                            ),
                            onPressed: () async {
                              Get.offAllNamed(AppRouteManager.bottomNav);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: context.phoneWidth(),
                              child: Text(
                                "Log In",
                                style: FontManager.boldStyle.copyWith(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                          alignment: Alignment.centerRight,
                          child: RichText(
                            text: TextSpan(
                                text: 'Forget password?!',
                                style: FontManager.smallBoldStyle.copyWith(
                                  color: Colors.black38,
                                  // fontSize: 10,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(AppRouteManager.forgotPassword);
                                  }),
                          )),
                      SizedBox(height: 10.h),
                      GoogleWidget(title: 'or login width'),
                      SizedBox(height: 20.h),
                      BottoTextWidget(
                        title1: 'New user?! ',
                        title2: 'Create an Account',
                        func: () {
                          Get.toNamed(AppRouteManager.signUp);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
