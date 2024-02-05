import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';
import 'package:medicon/widgets/custom_search_view.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';

class TopNavigationScreen extends StatelessWidget {
  TopNavigationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  TextEditingController searchController2 = TextEditingController();

  TextEditingController searchEditTextController = TextEditingController();

  TextEditingController searchEditTextController1 = TextEditingController();

  TextEditingController searchEditTextController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 503.h,
          child: Column(
            children: [
              SizedBox(height: 63.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 144.v),
                    padding: EdgeInsets.symmetric(horizontal: 48.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Top Navigation",
                            style: theme.textTheme.displayMedium,
                          ),
                        ),
                        SizedBox(height: 78.v),
                        _buildTopNavigationColumn(context),
                        SizedBox(height: 64.v),
                        _buildTopNavigationColumn1(context),
                        SizedBox(height: 64.v),
                        _buildSearchColumn(context),
                        SizedBox(height: 64.v),
                        Padding(
                          padding: EdgeInsets.only(right: 56.h),
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
                              padding: EdgeInsets.all(7.h),
                              decoration:
                                  AppDecoration.outlineDeepPurpleA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildSearchEditText1(context),
                                  SizedBox(height: 8.v),
                                  _buildSearchEditText2(context),
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopNavigationColumn(BuildContext context) {
    return DottedBorder(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: AppDecoration.fillGray,
              child: Column(
                children: [
                  _buildTopNavigationRow(
                    context,
                    arrowLeft: ImageConstant.imgSave,
                    arrowLeft1: ImageConstant.imgSave,
                    arrowLeft2: ImageConstant.imgSave,
                    centerTitle: "Center Title",
                    arrowRight: ImageConstant.imgArrowRight,
                    arrowRight1: ImageConstant.imgArrowRight,
                    arrowRight2: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 24.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 12.v,
                            bottom: 12.v,
                          ),
                          child: Text(
                            "Cancel",
                            style:
                                CustomTextStyles.bodySmallInterDeeppurpleA20001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Container(
              decoration: AppDecoration.fillDeepPurple,
              child: Column(
                children: [
                  _buildTopNavigationRow(
                    context,
                    arrowLeft: ImageConstant.imgArrowLeft,
                    arrowLeft1: ImageConstant.imgArrowLeft,
                    arrowLeft2: ImageConstant.imgArrowLeft,
                    centerTitle: "Center Title",
                    arrowRight: ImageConstant.imgArrowRightIndigo5001,
                    arrowRight1: ImageConstant.imgArrowRightIndigo5001,
                    arrowRight2: ImageConstant.imgArrowRightIndigo5001,
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 24.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomSearchView(
                            controller: searchController1,
                            hintText: "Search",
                            borderDecoration: SearchViewStyleHelper.fillGrayTL4,
                            fillColor: appTheme.gray90001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 12.v,
                            bottom: 12.v,
                          ),
                          child: Text(
                            "Cancel",
                            style: CustomTextStyles.bodySmallInterIndigo5001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                ],
              ),
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCenterTitleButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      text: "Center Title",
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowRightIndigo5001,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowLeft,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlueGray,
      buttonTextStyle: CustomTextStyles.titleMediumInter,
    );
  }

  /// Section Widget
  Widget _buildTopNavigationColumn1(BuildContext context) {
    return DottedBorder(
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
            _buildTopNavigationRow(
              context,
              arrowLeft: ImageConstant.imgSave,
              arrowLeft1: ImageConstant.imgSave,
              arrowLeft2: ImageConstant.imgSave,
              centerTitle: "Center Title",
              arrowRight: ImageConstant.imgArrowRight,
              arrowRight1: ImageConstant.imgArrowRight,
              arrowRight2: ImageConstant.imgArrowRight,
            ),
            SizedBox(height: 16.v),
            _buildCenterTitleButton(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchEditText(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
        controller: searchEditTextController,
        hintText: "Search",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 14.v, 12.h, 10.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgContrastBlueGray1000116x16,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 11.v,
          right: 30.h,
          bottom: 11.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray90001,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchColumn(BuildContext context) {
    return DottedBorder(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(
                children: [
                  Expanded(
                    child: CustomSearchView(
                      controller: searchController2,
                      hintText: "Search",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      top: 12.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "Cancel",
                      style: CustomTextStyles.bodySmallInterDeeppurpleA20001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Container(
              decoration: AppDecoration.fillDeepPurple,
              child: Row(
                children: [
                  _buildSearchEditText(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      top: 12.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "Cancel",
                      style: CustomTextStyles.bodySmallInterIndigo5001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchEditText1(BuildContext context) {
    return CustomTextFormField(
      controller: searchEditTextController1,
      hintText: "Search for tokens",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(11.h, 14.v, 12.h, 10.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgContrastOnerror,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 11.v,
        right: 30.h,
        bottom: 11.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL4,
      fillColor: appTheme.gray10002,
    );
  }

  /// Section Widget
  Widget _buildSearchEditText2(BuildContext context) {
    return CustomTextFormField(
      controller: searchEditTextController2,
      hintText: "Search for tokens",
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(11.h, 14.v, 12.h, 10.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgContrastBlueGray10001,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 11.v,
        right: 30.h,
        bottom: 11.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGray,
      fillColor: appTheme.gray90001,
    );
  }

  /// Common widget
  Widget _buildTopNavigationRow(
    BuildContext context, {
    required String arrowLeft,
    required String arrowLeft1,
    required String arrowLeft2,
    required String centerTitle,
    required String arrowRight,
    required String arrowRight1,
    required String arrowRight2,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray90008,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: arrowLeft,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          CustomImageView(
            imagePath: arrowLeft1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
          CustomImageView(
            imagePath: arrowLeft2,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
          Spacer(
            flex: 50,
          ),
          Text(
            centerTitle,
            style: CustomTextStyles.titleMediumInter.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomImageView(
            imagePath: arrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          CustomImageView(
            imagePath: arrowRight1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
          CustomImageView(
            imagePath: arrowRight2,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
    );
  }
}
