import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class NinetynineItemWidget extends StatelessWidget {
  const NinetynineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198.v,
      width: 314.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMediumShotSmi,
            height: 163.adaptSize,
            width: 163.adaptSize,
            radius: BorderRadius.circular(
              19.h,
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 11.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrontViewSmil,
            height: 138.adaptSize,
            width: 138.adaptSize,
            radius: BorderRadius.circular(
              19.h,
            ),
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAfricanAmerica,
            height: 174.adaptSize,
            width: 174.adaptSize,
            radius: BorderRadius.circular(
              19.h,
            ),
            alignment: Alignment.bottomRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1181Gray300,
            height: 196.v,
            width: 291.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 4.h),
          ),
        ],
      ),
    );
  }
}