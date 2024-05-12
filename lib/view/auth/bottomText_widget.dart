import 'package:hypermart/core/constants/font_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottoTextWidget extends StatelessWidget {
  String title1;
  String title2;
  var func;

  BottoTextWidget({required this.title1, required this.title2, this.func});
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(text: '$title1', style: FontManager.latoBold, children: [
      TextSpan(
        text: '$title2',
        style: FontManager.smallBoldStyle,
        recognizer: TapGestureRecognizer()..onTap = func,
      )
    ]));
  }
}
