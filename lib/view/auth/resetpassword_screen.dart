import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/view/auth/mytextfaild_widget.dart';

 //yeni bir şifre girilmesini ve onaylanmasını sağlayan metin alanlarını içerir
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Reset Password',
                  style: FontManager.boldStyle.copyWith(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Enter new password',
                style: FontManager.boldStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              MyTextFaildWidget(
                title: 'new password',
                textEditingController: TextEditingController(),
              ),
              const SizedBox(height: 20),
              Text(
                'Confirm password',
                style: FontManager.boldStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              MyTextFaildWidget(
                title: 'confirm password',
                textEditingController: TextEditingController(),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQueryManager(context).width / 2.6,
                      MediaQueryManager(context).height / 13,
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed(AppRouteManager.login);
                  },
                  child: Text(
                    'Submit',
                    style: FontManager.boldStyle.copyWith(color: Colors.white),
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
