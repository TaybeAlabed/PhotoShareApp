import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/view/auth/passwordBody_widget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

//Bu kod, kullanıcının e-posta adresine gönderilen doğrulama kodunu girmesini sağlayan VerificationScreen widget'ını tanımlar.

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  // late OtpFieldController otpController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                PasswordBodyWidget(
                  iconPath: ImageManager.iconVerifyCode,
                  headTitle: 'CONFIRMATION',
                  bodyTitle:
                      'please type the verification code \n sent to \n  test@gmail.com',
                ),
                OTPTextField(
                    length: 5,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 60,
                    fieldStyle: FieldStyle.underline,
                    isDense: true,
                    style: FontManager.boldStyle.copyWith(
                      fontSize: 20,
                    ),
                    otpFieldStyle: OtpFieldStyle(
                      focusBorderColor: ColorManager.primaryRed,
                    ),
                    onChanged: (pin) {},
                    onCompleted: (pin) {
                      Get.offNamed(AppRouteManager.login);
                      // controller.getVerificationCode(pin);
                    }),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: RichText(
                          text: TextSpan(
                        text: 'To send again, ',
                        style: FontManager.boldStyle.copyWith(
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: 'click here',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {},
                            style: FontManager.boldStyle.copyWith(
                                fontSize: 20,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.4,
                                color: ColorManager.primaryRed.withOpacity(
                                  .9,
                                )),
                          ),
                        ],
                      )),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        '00:00',
                        style: FontManager.regularStyle,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
