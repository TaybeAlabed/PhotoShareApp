import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';


//Arama metin alanı, kullanıcının bir şeyler aramasına izin verir.

class SeartchTextFaildWidget extends StatelessWidget {
  SeartchTextFaildWidget({this.size, this.color = Colors.white, super.key});
  double? size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(0),
      child: TextField(
        style: FontManager.smallBoldStyle,
        decoration: InputDecoration(
            fillColor: color,
            filled: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: size ?? 16.h),
            hintText: 'Search Anything...',
            hintStyle: FontManager.smallBoldStyle.copyWith(
              fontSize: 11.sp,
              color: ColorManager.fontGray,
            ),
            suffixIcon: Icon(
              Icons.keyboard_voice_outlined,
              size: 28.r,
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                size: 28.r,
              ),
            )),
      ),
    );
  }
}
