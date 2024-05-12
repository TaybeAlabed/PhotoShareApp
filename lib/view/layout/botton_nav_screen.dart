import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/view/home/homePage_screen.dart';
import 'package:hypermart/view/layout/bottom_nav_item.dart';
import 'package:hypermart/view/post/add_post_screen.dart';
import 'package:hypermart/view/profilePage/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  final CustomScrollView? slivers;
  final Widget? endDrawer;
  const BottomNavScreen({this.slivers, this.endDrawer, super.key});

  @override
  BottomNavScreenState createState() => BottomNavScreenState();

  static BottomNavScreenState? of(BuildContext context) =>
      context.findAncestorStateOfType<BottomNavScreenState>();
}

class BottomNavScreenState extends State<BottomNavScreen> {
  late int selectedIndex;
  int drawerSectionValue = -1;

  int bannerTimer = 6;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void selectedTab(int index, {int? indexDrawerSection}) {
    setState(() {
      selectedIndex = index;
    });
  }

  selectedWidget() {
    if (selectedIndex == 0) {
      return const HomePageScreen();
    } else if (selectedIndex == 1) {
      return const ProfileScreen();
    }
  }

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.slivers == null ? 0 : -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      //! endDrawer: عبارة عن دراور يتم فتحها في الجانب الاخر

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: EdgeInsets.all(2.r),
            child: FloatingActionButton(
                backgroundColor: ColorManager.primaryRed,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const AddPostScreen();
                    },
                  ));
                },
                child: Container(
                    padding: EdgeInsets.all(12.r),
                    child: const Icon(Icons.add))),
          ),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        index: selectedIndex,
        height: 54.h,
        iconSize: 18.5.r,
        backgroundColor: ColorManager.primaryRed,
        color: Colors.white.withOpacity(.6),
        selectedColor: Colors.white.withOpacity(.9),
        onTabSelected: selectedTab,
        items: [
          FABBottomAppBarItem(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30))),
              iconData: selectedIndex == 0
                  ? ImageManager.homeiconoutline
                  : ImageManager.homeicon,
              text: "Home"),
          FABBottomAppBarItem(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
            iconData: selectedIndex == 1
                ? ImageManager.profile3
                : ImageManager.profile4,
            text: "Profile",
          ),
        ],
      ),
      body: widget.slivers ?? selectedWidget(),
    );
  }
}
