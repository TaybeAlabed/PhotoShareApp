import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/components/staggered_grid_view_card.dart';
import 'package:hypermart/core/constants/app_text_constants.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_extension.dart';
import 'package:hypermart/view/details/details_page.dart';
import 'package:hypermart/view/home/search_appbar_widget.dart';

//kullanıcının arama yapabileceği bir arama çubuğu, kategori listesi ve resim kartlarını içerir.
//Resim kartları, StaggeredGridViewCard widget'ı kullanılarak oluşturulur. Her kart, bir resmi gösterir 
//ve üzerine tıklandığında detay sayfasına yönlendirir.

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10.r),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h),
                  SeartchTextFaildWidget(),
                  SizedBox(height: 20.h),
                  const CategoryListWidget(),
                  SizedBox(height: 20.h),
                  StaggeredGridViewCard(
                    itemCount: APPTextConstatnts.images.length,
                    itemBuilder: (p0, index) {
                      return Stack(
                        alignment: Alignment.topRight,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DetailsPage(
                                      image: APPTextConstatnts.images[index]);
                                },
                              ));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                APPTextConstatnts.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //Padding(
                            //padding: EdgeInsets.all(10.r),
                            //child: CircleAvatar(
                              //radius: 18.r,
                              //backgroundColor: ColorManager.primaryRed,
                              //child: const Icon(
                                //Icons.favorite,
                                //color: Colors.white,
                              //),
                            //),
                          //)
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  int cateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      // width: 400,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) =>
            Padding(padding: EdgeInsets.all(5.r)),
        scrollDirection: Axis.horizontal,
        itemCount: APPTextConstatnts.allCategory.length,
        itemBuilder: (context, index) {
          return InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              cateIndex = index;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: cateIndex == index
                    ? ColorManager.primaryRed
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.withOpacity(.4),
                ),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    APPTextConstatnts.allCategory[index]['category_image'],
                    width: 12.r,
                    height: 12.r,
                    color: cateIndex == index
                        ? Colors.white
                        : ColorManager.primaryRed,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    APPTextConstatnts.allCategory[index]['category_name'],
                    style: context.headLine4.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cateIndex == index
                            ? Colors.white
                            : ColorManager.primaryRed,
                        fontSize: 11.sp),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
