import 'package:hypermart/core/constants/color_manager.dart';
import 'package:flutter/material.dart';

class FontManager {
  static TextStyle get extraBoldStyle {
    return TextStyle(
      fontSize: 54,
      fontWeight: FontWeight.bold,
      color: ColorManager.fontBlack,
      fontFamily: 'Nunito-Black',
    );
  }

  static TextStyle get boldStyle {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: ColorManager.fontBlack,
      fontFamily: 'Nunito-Black',
    );
  }

  static TextStyle get smallBoldStyle {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: ColorManager.fontBlack,
      fontFamily: 'Nunito-Black',
    );
  }

  static TextStyle get regularStyle {
    return TextStyle(
      fontSize: 18,
      color: ColorManager.fontGray,
      fontFamily: 'Nunito-Regular',
    );
  }

  static TextStyle get latoRegular {
    return TextStyle(
      fontSize: 12,
      color: ColorManager.fontGray,
      fontFamily: 'Lato-Regular',
    );
  }

  static TextStyle get latoBold {
    return TextStyle(
      fontSize: 12,
      color: ColorManager.bottomText,
      fontFamily: 'Lato-Bold',
    );
  }

  static TextStyle get heeboRegular {
    return TextStyle(
      fontSize: 14,
      color: ColorManager.fontBlack,
      fontFamily: 'Heebo-Regular',
    );
  }

  static TextStyle get poppinsBold {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: ColorManager.fontBlack,
      fontFamily: 'Poppins-Bold',
    );
  }

  static TextStyle get poppinsMedium {
    return TextStyle(
      fontSize: 14,
      color: ColorManager.fontBlack,
      fontFamily: 'Poppins-Medium',
    );
  }
}
//Bu kod, uygulamanın metin stillerini yönetmek için kullanılan FontManager adlı bir sınıfı tanımlar.
// belirli bir metin stili ayarlarını içerir. Örneğin, kalın (bold), normal, veya özel font ailesi gibi.
