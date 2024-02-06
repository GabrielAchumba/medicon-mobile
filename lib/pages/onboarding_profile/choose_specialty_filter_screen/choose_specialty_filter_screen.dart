import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class ChooseSpecialtyFilterScreen extends StatelessWidget {
  const ChooseSpecialtyFilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNativeBottom(context),
              SizedBox(height: 62.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Filter",
                  style: CustomTextStyles.headlineSmallAeonikBlack900,
                ),
              ),
              SizedBox(height: 24.v),
              _buildViewsTables(
                context,
                text: "Anaesthesiology",
              ),
              _buildViewsTables1(
                context,
                cardiology: "Audiologist",
              ),
              _buildViewsTables(
                context,
                text: "Cardiac Surgery",
              ),
              SizedBox(height: 5.v),
              _buildViewsTables1(
                context,
                cardiology: "Cardiology",
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildViewsTables6(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNativeBottom(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 163.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle,
            height: 5.v,
            width: 48.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewsTables6(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 71.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Clinical Microbiology",
              style: CustomTextStyles.bodyLargeBluegray90017,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChecklist,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildViewsTables(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              text,
              style: CustomTextStyles.bodyLargeBluegray90017.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChecklist,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildViewsTables1(
    BuildContext context, {
    required String cardiology,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              cardiology,
              style: CustomTextStyles.bodyLargeBluegray90017.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheck,
              height: 16.adaptSize,
              width: 16.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
