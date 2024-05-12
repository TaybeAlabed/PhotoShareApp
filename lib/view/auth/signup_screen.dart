import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';
import 'package:hypermart/core/constants/verification_mode.dart';

import 'package:hypermart/view/auth/bottomText_widget.dart';
import 'package:hypermart/view/auth/google_widget.dart';
import 'package:hypermart/view/auth/mytextfaild_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Bu kod, bir kullanıcının yeni bir hesap oluşturmasına izin veren SignUpScreen widget'ını tanımlar.
 //Bu widget, kullanıcının adını, e-posta adresini ve şifresini girmesini sağlar.
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
          child: Center(
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Photo',
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
                        SizedBox(height: 20.h),
                        Text(
                          'Please type your information',
                          style: FontManager.regularStyle,
                        ),
                        SizedBox(height: 20.h),
                        MyTextFaildWidget(
                            textEditingController: TextEditingController(),
                            title: 'Full Name'),
                        SizedBox(height: 16.h),
                        MyTextFaildWidget(
                            textEditingController: TextEditingController(),
                            title: 'Email Address',
                            textInputType: TextInputType.emailAddress),
                        SizedBox(height: 16.h),
                        MyTextFaildWidget(
                          textEditingController: TextEditingController(),
                          title: 'Password',
                        ),
                        SizedBox(height: 16.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                alignment: Alignment.center,
                              ),
                              onPressed: () {
                                Get.toNamed(AppRouteManager.verification,
                                    arguments: {
                                      'email_address': 'test@gmail.com',
                                      'verification_mode':
                                          VerificationMode.newAccount,
                                    });
                                // controller.submit();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: context.phoneWidth(),
                                child: Text(
                                  'Create Account',
                                  style: FontManager.boldStyle.copyWith(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(height: 40.h),
                        GoogleWidget(title: 'or signUp width'),
                        const SizedBox(height: 20),
                        BottoTextWidget(
                          title1: 'Already have an account? ',
                          title2: 'Sign In',
                          func: () {
                            Get.offAllNamed(AppRouteManager.login);
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
