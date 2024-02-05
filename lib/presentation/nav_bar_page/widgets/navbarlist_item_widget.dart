import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class NavbarlistItemWidget extends StatelessWidget {
  const NavbarlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 107.h,
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
            horizontal: 40.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.outlineDeepPurpleA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 46.v),
              CustomImageView(
                imagePath: ImageConstant.imgGridDeepPurpleA20001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 46.v),
              CustomImageView(
                imagePath: ImageConstant.imgGridOnerror,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 46.v),
              CustomImageView(
                imagePath: ImageConstant.imgGridDeepPurpleA20001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
