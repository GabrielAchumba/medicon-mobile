import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA20001,
        body: Container(
          width: 276.h,
          padding: EdgeInsets.all(48.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(45.h, 13.v, 45.h, 12.v),
                decoration: AppDecoration.outlineIndigo,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Text(
                      "Logo",
                      style: CustomTextStyles.displayMediumOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              DottedBorder(
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
                    horizontal: 27.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 16.v,
                        width: 62.h,
                      ),
                      SizedBox(height: 26.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 24.v,
                        width: 96.h,
                      ),
                      SizedBox(height: 27.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgLayer1,
                        height: 32.v,
                        width: 122.h,
                      ),
                      SizedBox(height: 19.v),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 9.v),
            ],
          ),
        ),
      ),
    );
  }
}
