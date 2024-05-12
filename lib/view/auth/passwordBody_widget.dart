import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:lottie/lottie.dart';

class PasswordBodyWidget extends StatefulWidget {
  String iconPath;
  String headTitle;
  String bodyTitle;
  PasswordBodyWidget(
      {required this.iconPath,
      required this.headTitle,
      required this.bodyTitle,
      super.key});

  @override
  State<PasswordBodyWidget> createState() => _PasswordBodyWidgetState();
}

class _PasswordBodyWidgetState extends State<PasswordBodyWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this)
      ..addListener(() {
        setState(() {
          if (_controller.value == 1.0) {
            print('object');
            _controller.reverse();
          } else if (_controller.value < 0.64) {
            _controller.forward();
          }
          // Rebuild the widget at each frame to update the "progress" label.
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(
          widget.iconPath,
          controller: _controller,
          onLoaded: (composition) {
            _controller
              ..duration = composition.duration
              ..forward();
          },
        ),
        Text(
          widget.headTitle, //Forgot password ?!
          style: FontManager.boldStyle.copyWith(fontSize: 15.sp),
        ),
        SizedBox(height: 20.h),
        Text(
          widget
              .bodyTitle, //please enter your email address to receive a verification code
          style: FontManager.smallBoldStyle
              .copyWith(fontSize: 15.sp, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
