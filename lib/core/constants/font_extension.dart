import 'package:flutter/material.dart';

extension FontManager on BuildContext {
  TextStyle get headLine1 => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get headLine2 => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get headLine3 => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headLine4 => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get headLine5 => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get logoFont => Theme.of(this).textTheme.titleLarge!;
}

//Bu genişletme, belirli metin stillerine erişmek için tekrar tekrar aynı kodu yazmayı önler
