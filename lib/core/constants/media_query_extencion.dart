import 'package:flutter/material.dart';

extension ContextExtention on BuildContext {
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;

  double phoneHeight() => MediaQuery.of(this).size.height;
  double phoneWidth() => MediaQuery.of(this).size.width;
}
//Bu genişletme, özellikle widget'ların boyutlarını ve konumlarını hesaplarken kullanışlıdır. 