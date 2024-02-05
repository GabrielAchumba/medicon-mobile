import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class Iphone13ProMax113Screen extends StatelessWidget {
  const Iphone13ProMax113Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 776.v,
          width: 646.h,
          padding: EdgeInsets.symmetric(
            horizontal: 60.h,
            vertical: 79.v,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 274.v,
                  width: 286.h,
                  margin: EdgeInsets.only(
                    left: 32.h,
                    top: 34.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 286.h,
                          child: Text(
                            "Make online and live Consultation\neasily with top doctors",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .headlineLargePlusJakartaDisplayGray90007,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle39829,
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        radius: BorderRadius.circular(
                          22.h,
                        ),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 52.h,
                          bottom: 94.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle39857,
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        radius: BorderRadius.circular(
                          22.h,
                        ),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 76.h,
                          bottom: 80.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkDeepPurple300,
                        height: 65.v,
                        width: 98.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 76.h,
                          bottom: 9.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 80.v,
                  width: 107.h,
                  margin: EdgeInsets.only(top: 58.v),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "welDoc",
                          style: CustomTextStyles
                              .titleMediumPlusJakartaDisplayGray90007Bold,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpBlueA200,
                        height: 39.v,
                        width: 40.h,
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 223.h,
                    right: 52.h,
                    bottom: 72.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 64.h,
                    vertical: 50.v,
                  ),
                  decoration: AppDecoration.fillBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder22,
                  ),
                  child: Text(
                    "Login to your account",
                    style: CustomTextStyles.labelLargePlusJakartaDisplay,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(right: 8.h),
                  color: appTheme.gray10004,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder22,
                  ),
                  child: Container(
                    height: 187.v,
                    width: 250.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 39.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillGray10004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder22,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 105.v,
                            width: 152.h,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle4783,
                                  height: 44.v,
                                  width: 45.h,
                                  alignment: Alignment.bottomLeft,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Sign up with Google",
                                    style: CustomTextStyles
                                        .labelLargePlusJakartaDisplayGray90007,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Sign up your account",
                            style: CustomTextStyles
                                .bodySmallPlusJakartaDisplayBlueA200
                                .copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 244.v,
                  width: 235.h,
                  margin: EdgeInsets.only(bottom: 160.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 201.v,
                          width: 235.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle39860,
                                height: 145.adaptSize,
                                width: 145.adaptSize,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle39858,
                                height: 146.adaptSize,
                                width: 146.adaptSize,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 37.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle39859,
                                height: 108.adaptSize,
                                width: 108.adaptSize,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 9.v),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse1181,
                        height: 244.v,
                        width: 193.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
