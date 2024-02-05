import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

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
      icon: ImageConstant.imgGridDeepPurpleA20001,
      activeIcon: ImageConstant.imgGridDeepPurpleA20001,
      type: BottomBarEnum.Griddeeppurplea20001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTelevisionOnerror,
      activeIcon: ImageConstant.imgTelevisionOnerror,
      type: BottomBarEnum.Televisiononerror,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGlobeOnerror,
      activeIcon: ImageConstant.imgGlobeOnerror,
      type: BottomBarEnum.Globeonerror,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchOnerror,
      activeIcon: ImageConstant.imgSearchOnerror,
      type: BottomBarEnum.Searchonerror,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.v,
      decoration: BoxDecoration(
        color: appTheme.gray90008,
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
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: theme.colorScheme.onError,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.deepPurpleA20001,
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

enum BottomBarEnum {
  Griddeeppurplea20001,
  Televisiononerror,
  Globeonerror,
  Searchonerror,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
