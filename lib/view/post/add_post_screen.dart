import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';
import 'package:hypermart/core/constants/space_constant.dart';
import 'package:hypermart/view/auth/mytextfaild_widget.dart';
import 'package:hypermart/view/home/homePage_screen.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

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
                        'Share now',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ),
                  // SizedBox(width: 10.w),
                  // Expanded(
                  //   flex: 20,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(5)),
                  //       padding: EdgeInsets.all(7.w),
                  //     ),
                  //     onPressed: () {},
                  //     child: const Icon(Icons.send_and_archive),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: ColorManager.primaryRed,
          title: Text('Add New Post',
              style: TextStyle(fontSize: 13.sp, color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SafeArea(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.s paceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage(ImageManager.imageTest3),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'type user_name',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            'user_email',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SpaceConstant.instance.heightSmall,
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: context.phoneWidth(),
                  height: 140.h,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        size: 30.r,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Add New Image',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text('    Description :', style: TextStyle(fontSize: 16.sp)),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const MyTextFaildWidget(
                  maxLines: 5,
                  title: 'Add your desc. here ..',
                  textInputType: TextInputType.emailAddress,
                  // textEditingController: controller.emailAddress,
                ),
              ),
              SizedBox(height: 16.h),
              Text('    Image Type :', style: TextStyle(fontSize: 16.sp)),
              SizedBox(height: 10.h),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: const CategoryListWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
