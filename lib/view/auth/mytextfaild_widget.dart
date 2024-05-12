import 'package:hypermart/core/constants/font_manager.dart';
import 'package:flutter/material.dart';

//Bu kod, bir metin giriş alanını temsil eden ve özel olarak stilize edilmiş bir widget olan MyTextFaildWidget'ı tanımlar.

class MyTextFaildWidget extends StatelessWidget {
  final String title;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final int? maxLength;
  final int? maxLines;
  const MyTextFaildWidget({
    required this.title,
    this.textInputType,
    this.textEditingController,
    this.maxLength,
    this.maxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: TextFormField(
        maxLines: maxLines,
        maxLength: maxLength ?? 50,
        controller: textEditingController,
        style: FontManager.smallBoldStyle,
        keyboardType: textInputType ?? TextInputType.name,
        decoration: InputDecoration(
          fillColor: Colors.white70,
          filled: true,
          // counter: SizedBox.shrink(),
          counterText: "",
          hintText: title,
        ),
      ),
    );
  }
}
