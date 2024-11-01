import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Mingcutescanline,
  Iconwhitea700,
  Homeprimary,
  Majesticonsarticleline,
  Lockprimary16x16
}

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}


class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMingcuteScanLine,
      activeIcon: ImageConstant.imgMingcuteScanLine,
      type: BottomBarEnum.Mingcutescanline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconWhiteA700,
      activeIcon: ImageConstant.imgIconWhiteA700,
      type: BottomBarEnum.Iconwhitea700,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHomePrimary,
      activeIcon: ImageConstant.imgHomePrimary,
      type: BottomBarEnum.Homeprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMajesticonsArticleLine,
      activeIcon: ImageConstant.imgMajesticonsArticleLine,
      type: BottomBarEnum.Majesticonsarticleline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockPrimary16x16,
      activeIcon: ImageConstant.imgLockPrimary16x16,
      type: BottomBarEnum.Lockprimary16x16,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0X3FD9D9D9),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.h,
              width: 24.h,
              color: Color(0XFF001833),
            ),
            activeIcon: SizedBox(
              height: 46.h,
              width: 48.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 46.h,
                    width: double.maxFinite,
                    color: Color(0XFFFFFFFF),
                    radius: BorderRadius.circular(
                      23.0.h,
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.h,
                    width: 26.h,
                    color: Color(0XFFFFFFFF),
                  )
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
