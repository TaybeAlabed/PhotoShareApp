import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';
import 'package:hypermart/view/auth/mytextfaild_widget.dart';

//Bu detay sayfası, bir resmin detaylarını gösterir ve kullanıcının resme yorum yapmasına olanak tanır.
//Alt kısımda ise, resmi indirme ve görüntüleme sayılarını gösteren kartlar bulunur.

class DetailsPage extends StatefulWidget {
  final String image;
  const DetailsPage({required this.image, super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double onStarValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        bottomNavigationBar: Card(
          margin: EdgeInsets.zero,
          child: Container(
            height: 60.h,
            decoration: const BoxDecoration(
              // color: ColorConstants.instance.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(10.w),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Download the image now',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    flex: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(7.w),
                      ),
                      onPressed: () {},
                      child: const Icon(Icons.favorite),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      widget.image,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SafeArea(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.s paceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.orange,
                            backgroundImage:
                                AssetImage(ImageManager.imageTest3),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'type user_name',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.white),
                              ),
                              Text(
                                'user_email',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Image Title', style: TextStyle(fontSize: 16.sp)),
                    SizedBox(height: 4.h),
                    Text(
                        'Image Subtile And Description Image Subtile And Description Image Subtile And Descr...',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.black54)),
                    SizedBox(height: 10.h),
                    const RatingStars(
                      starCount: 5,
                      // maxValue: 3,
                      value: 4.5,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            width: 100,
                            height: 40.h,
                            decoration: BoxDecoration(
                              // color: ColorConstants.instance.primary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.download,
                                  // color: Colors.white,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '112',
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.black54),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            width: 100,
                            height: 40.h,
                            decoration: BoxDecoration(
                              // color: ColorConstants.instance.primary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.visibility,
                                  // color: Colors.white,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '112',
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.black54),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.w),
                    Text('Rate us now', style: TextStyle(fontSize: 12.sp)),
                    SizedBox(height: 10.w),
                    const MyTextFaildWidget(
                      title: 'Add your rating here ..',
                      textInputType: TextInputType.emailAddress,
                      // textEditingController: controller.emailAddress,
                    ),
                    SizedBox(height: 20.w),
                    Container(
                      width: context.phoneWidth(),
                      alignment: Alignment.center,
                      child: RatingStars(
                        value: onStarValue,
                        // starCount: 5,
                        // maxValue: 3,
                        animationDuration: const Duration(milliseconds: 500),
                        // value: 4.5,
                        onValueChanged: (value) {
                          onStarValue = value;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(height: 40.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
