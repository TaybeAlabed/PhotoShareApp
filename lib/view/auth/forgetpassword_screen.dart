import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
import 'package:hypermart/view/auth/mytextfaild_widget.dart';
import 'package:hypermart/view/auth/passwordBody_widget.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PasswordBodyWidget(
                iconPath: ImageManager.iconForgetPassword,
                headTitle: 'Forgot password ?!',
                bodyTitle:
                    'please enter your email address to receive a verification code',
              ),
              MyTextFaildWidget(
                textInputType: TextInputType.emailAddress,
                title: 'Email Address .',
                textEditingController: TextEditingController(),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      alignment: Alignment.center,
                    ),
                    onPressed: () async {
                      Get.toNamed(AppRouteManager.verification, arguments: {
                        'email_address': 'test@gmail.com',
                        'verification_mode': VerificationMode.resetPaasword,
                      });
                      // controller.verification();
                      ////////////
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: context.phoneWidth(),
                      child: Text(
                        "Send Email",
                        style: FontManager.boldStyle.copyWith(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
