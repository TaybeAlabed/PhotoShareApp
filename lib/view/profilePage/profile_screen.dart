import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypermart/core/constants/app_text_constants.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/constants/media_query_extencion.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primaryRed,
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: 75,
          //   color: ColorManager.primaryRed,
          // ),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Card(
                elevation: 10,
                margin: EdgeInsets.all(10.r),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey[400],
                                  size: 30.r,
                                ),
                              ),
                              SizedBox(width: 15.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'user name',
                                    style: FontManager.regularStyle
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                  Text(
                                    'user email',
                                    style: FontManager.regularStyle
                                        .copyWith(fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Card(
                margin: EdgeInsets.all(10.r),
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.r),
                      child: Text(
                        'My Account',
                        style: FontManager.latoBold.copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.phoneWidth(),
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: .9,
                      ),
                    ),
                    ...List.generate(
                      APPTextConstatnts.accountTools.length,
                      (index) => Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.zero,
                            child: ListTile(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                              ),
                              onTap: () {},
                              leading: SvgPicture.asset(
                                APPTextConstatnts.accountTools[index]['image'],
                                color: Colors.grey[600],
                                width: 23.r,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.black,
                                size: 12.sp,
                              ),
                              title: Text(
                                APPTextConstatnts.accountTools[index]['title'],
                                style: FontManager.latoBold.copyWith(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.r),
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.r),
                      child: Text(
                        'Latest statistics',
                        style: FontManager.latoBold.copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.phoneWidth(),
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: .9,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Number of visits',
                                style: TextStyle(fontSize: 11.sp),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                '120',
                                style: TextStyle(fontSize: 11.sp),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Number of downloads',
                                style: TextStyle(fontSize: 11.sp),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                '120',
                                style: TextStyle(fontSize: 11.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onTap: () async {
                    // await services.sharedPreferences.clear().then((value) {
                    //   Get.offAllNamed(AppRouteManager.login);
                    // });
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Colors.grey[400] as Color,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      width: double.infinity,

                      // margin: EdgeInsets.symmetric(horizontal: 20.w),

                      height: MediaQueryManager(context).height / 18,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            ImageManager.iconLogout,
                            color: Colors.grey[600],
                            width: 20.r,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Log Out',
                            style: FontManager.latoBold.copyWith(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
