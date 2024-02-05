import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';
import 'package:medicon/widgets/custom_switch.dart';

class CardsScreen extends StatelessWidget {
  CardsScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: 421.h,
          padding: EdgeInsets.only(
            left: 48.h,
            top: 60.v,
            right: 48.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Switches",
                style: CustomTextStyles.displayMediumGray90004,
              ),
              SizedBox(height: 81.v),
              Padding(
                padding: EdgeInsets.only(right: 253.h),
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
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomSwitch(
                          value: isSelectedSwitch,
                          onChange: (value) {
                            isSelectedSwitch = value;
                          },
                        ),
                        SizedBox(height: 16.v),
                        CustomSwitch(
                          value: isSelectedSwitch1,
                          onChange: (value) {
                            isSelectedSwitch1 = value;
                          },
                        ),
                        SizedBox(height: 16.v),
                        CustomSwitch(
                          value: isSelectedSwitch2,
                          onChange: (value) {
                            isSelectedSwitch2 = value;
                          },
                        ),
                        SizedBox(height: 16.v),
                        CustomSwitch(
                          value: isSelectedSwitch3,
                          onChange: (value) {
                            isSelectedSwitch3 = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 79.v),
              Text(
                "Segmented Picker",
                style: CustomTextStyles.displayMediumGray90004,
              ),
              SizedBox(height: 78.v),
              Padding(
                padding: EdgeInsets.only(right: 139.h),
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
                    width: 186.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildAssetsButton(context),
                        SizedBox(height: 16.v),
                        _buildAssetsButton1(context),
                        SizedBox(height: 16.v),
                        _buildAssetsButton2(context),
                        SizedBox(height: 16.v),
                        _buildAssetsButton3(context),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAssetsButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 28.v,
      text: "Assets",
      margin: EdgeInsets.only(right: 6.h),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.labelLargeInter,
    );
  }

  /// Section Widget
  Widget _buildAssetsButton1(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      text: "Assets",
      margin: EdgeInsets.only(right: 6.h),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.labelLargeInterDeeppurple900,
    );
  }

  /// Section Widget
  Widget _buildAssetsButton2(BuildContext context) {
    return CustomOutlinedButton(
      height: 28.v,
      text: "Assets",
      margin: EdgeInsets.only(right: 6.h),
      buttonStyle: CustomButtonStyles.outlineBlackTL2,
      buttonTextStyle: CustomTextStyles.labelLargeInterDeeppurple50,
    );
  }

  /// Section Widget
  Widget _buildAssetsButton3(BuildContext context) {
    return CustomOutlinedButton(
      height: 28.v,
      text: "Assets",
      margin: EdgeInsets.only(right: 6.h),
      buttonStyle: CustomButtonStyles.outlineBlackTL21,
      buttonTextStyle: CustomTextStyles.labelLargeInterPurple800,
    );
  }
}
