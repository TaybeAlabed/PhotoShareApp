import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';

//Bu kod, Google ile oturum açma seçeneğini temsil eden bir widget olan GoogleWidget'ı tanımlar.

class GoogleWidget extends StatelessWidget {
  String title;
  GoogleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQueryManager(context).width / 8,
              child: Divider(
                color: ColorManager.shadow,
                thickness: 1.2,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '$title',
                  style: FontManager.latoBold,
                )),
            SizedBox(
              width: MediaQueryManager(context).width / 8,
              child: Divider(
                color: ColorManager.shadow,
                thickness: 1.2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageManager.iconGoogle,
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 10),
            Text(
              'Google',
              style: FontManager.boldStyle.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
