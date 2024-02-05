import '../nav_bar_page/widgets/navbarlist_item_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class NavBarPage extends StatelessWidget {
  const NavBarPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: 608.h,
          padding: EdgeInsets.only(top: 60.v),
          decoration: AppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 48.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "Nav Bar",
                      style: CustomTextStyles.displayMediumGray90004,
                    ),
                  ),
                  SizedBox(height: 81.v),
                  _buildNavBarList(context),
                  SizedBox(height: 64.v),
                  SizedBox(
                    height: 224.v,
                    width: 407.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: DottedBorder(
                            color: appTheme.deepPurpleA200,
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 1.v,
                              right: 1.h,
                              bottom: 1.v,
                            ),
                            strokeWidth: 1.h,
                            radius: Radius.circular(5),
                            borderType: BorderType.RRect,
                            dashPattern: [
                              10,
                              5,
                            ],
                            child: Container(
                              height: 224.v,
                              width: 407.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin:
                                EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 154.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.h,
                              vertical: 7.v,
                            ),
                            decoration: AppDecoration.fillOnPrimaryContainer,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgGridDeepPurpleA20001,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 8.v),
                                ),
                                Spacer(
                                  flex: 27,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgTelevisionBlueGray400,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 8.v),
                                ),
                                Spacer(
                                  flex: 22,
                                ),
                                CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  decoration:
                                      IconButtonStyleHelper.fillDeepPurpleA,
                                  child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgTelevisionOnprimarycontainer,
                                  ),
                                ),
                                Spacer(
                                  flex: 22,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsBlueGray400,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 8.v),
                                ),
                                Spacer(
                                  flex: 27,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSearch,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 8.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 64.v),
                  Padding(
                    padding: EdgeInsets.only(right: 405.h),
                    child: DottedBorder(
                      color: appTheme.deepPurpleA200,
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 1.v,
                        right: 1.h,
                        bottom: 1.v,
                      ),
                      strokeWidth: 1.h,
                      radius: Radius.circular(5),
                      borderType: BorderType.RRect,
                      dashPattern: [
                        10,
                        5,
                      ],
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 32.h,
                          vertical: 22.v,
                        ),
                        decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillDeepPurpleA,
                              child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgTelevisionOnprimarycontainer,
                              ),
                            ),
                            SizedBox(height: 30.v),
                            CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillDeepPurpleA,
                              child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgTelevisionOnprimarycontainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavBarList(BuildContext context) {
    return SizedBox(
      height: 296.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 28.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return NavbarlistItemWidget();
        },
      ),
    );
  }
}
