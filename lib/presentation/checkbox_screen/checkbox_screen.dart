import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 447.h,
          padding: EdgeInsets.symmetric(
            horizontal: 48.h,
            vertical: 60.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Checkbox",
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 82.v),
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
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineDeepPurpleA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildDarkModeOnRow(
                        context,
                        closeImage: ImageConstant.imgTick,
                        responsibilityText:
                            "It is my responsibility to keep my seed phrase secure",
                      ),
                      SizedBox(height: 23.v),
                      _buildDarkModeOnRow(
                        context,
                        closeImage: ImageConstant.imgClose,
                        responsibilityText:
                            "It is my responsibility to keep my seed phrase secure",
                      ),
                    ],
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

  /// Common widget
  Widget _buildDarkModeOnRow(
    BuildContext context, {
    required String closeImage,
    required String responsibilityText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineDeeppurpleA200012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: closeImage,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Expanded(
            child: Container(
              width: 258.h,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
              ),
              child: Text(
                responsibilityText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallInterGray50.copyWith(
                  color: appTheme.gray50,
                  height: 1.67,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
