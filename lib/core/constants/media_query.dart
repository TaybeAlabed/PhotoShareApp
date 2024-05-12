import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension MediaQueryManager on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.height;
}
//Bu genişletme, bir BuildContext içinde bulunan medya sorgularını 
//(media queries) kullanarak ekranın genişlik ve yükseklik değerlerini döndürür.