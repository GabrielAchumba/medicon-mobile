import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';

class EnterVerificationCodeScreen extends StatelessWidget {
  const EnterVerificationCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Onboarding",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 10.v),
              Text(
                "Upload file from your computer ",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 82.v),
              Container(
                width: 263.h,
                margin: EdgeInsets.only(right: 79.h),
                child: Text(
                  "Current year’s license or proof of payment",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray90018.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              _buildFrame(context),
              SizedBox(height: 30.v),
              Text(
                "Upload in PDF or Doc",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 14.v),
              _buildContainer(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubmit(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 375.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 36.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 49.v),
          ),
          Expanded(
            child: Container(
              width: 271.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 2.v,
              ),
              child: Text(
                "This document is to be required at the beginning of every year to renew membership of Hospyta",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeRed500.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer(BuildContext context) {
    return DottedBorder(
      color: theme.colorScheme.primary,
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      radius: Radius.circular(3),
      borderType: BorderType.RRect,
      dashPattern: [
        3.764784336090088,
        3.764784336090088,
      ],
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 33.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconPrimary,
              height: 34.adaptSize,
              width: 34.adaptSize,
            ),
            SizedBox(height: 17.v),
            SizedBox(
              width: 230.h,
              child: Text(
                "Browse and chose the files you want to upload from your computer",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumAeonikGray700_1,
              ),
            ),
            SizedBox(height: 13.v),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      text: "Submit",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 64.v,
      ),
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
