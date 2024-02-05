import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_checkbox_button.dart';
import 'package:medicon/widgets/custom_drop_down.dart';

class DropdownScreen extends StatelessWidget {
  DropdownScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool addOn = false;

  bool addOn1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: 471.h,
          child: Column(
            children: [
              SizedBox(height: 64.v),
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
                            "Dropdown",
                            style: theme.textTheme.displayMedium,
                          ),
                        ),
                        SizedBox(height: 78.v),
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
                            width: 375.h,
                            padding: EdgeInsets.all(15.h),
                            decoration:
                                AppDecoration.outlineDeepPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: CustomDropDown(
                                    icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 14.v, 12.h, 14.v),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowup,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ),
                                    hintText: "Bitcoin",
                                    items: dropdownItemList,
                                    prefix: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 12.h,
                                        vertical: 14.v,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgTelevision,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: 44.v,
                                    ),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 13.v),
                                    borderDecoration: DropDownStyleHelper
                                        .fillOnPrimaryContainer,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer,
                                    onChanged: (value) {},
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: CustomDropDown(
                                    icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 14.v, 12.h, 14.v),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowupGray10002,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ),
                                    hintText: "Bitcoin",
                                    items: dropdownItemList1,
                                    prefix: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 12.h,
                                        vertical: 14.v,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgTelevision,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: 44.v,
                                    ),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 13.v),
                                    borderDecoration:
                                        DropDownStyleHelper.fillGray,
                                    fillColor: appTheme.gray90009,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 64.v),
                        Padding(
                          padding: EdgeInsets.only(right: 40.h),
                          child: _buildDarkModeOnSection(
                            context,
                            bitcoin: "Bitcoin",
                            arrowUp: ImageConstant.imgArrowup,
                            ethereumEth: ImageConstant.imgTelevision,
                            bitcoin1: "Bitcoin",
                            arrowUp1: ImageConstant.imgArrowup,
                            tetherUsdt: ImageConstant.imgTelevision,
                            bitcoin2: "Bitcoin",
                            arrowUp2: ImageConstant.imgArrowup,
                            bitcoin3: "Bitcoin",
                          ),
                        ),
                        SizedBox(height: 64.v),
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
                            padding: EdgeInsets.all(15.h),
                            decoration:
                                AppDecoration.outlineDeepPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Label",
                                        style: CustomTextStyles
                                            .titleSmallInterGray90009,
                                      ),
                                      SizedBox(height: 5.v),
                                      Container(
                                        padding: EdgeInsets.all(11.h),
                                        decoration: AppDecoration
                                            .outlineDeeppurpleA40001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant.imgClock,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 12.h,
                                                top: 2.v,
                                              ),
                                              child: Text(
                                                "Input",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: SizedBox(
                                                height: 20.v,
                                                child: VerticalDivider(
                                                  width: 2.h,
                                                  thickness: 2.v,
                                                  color: appTheme.gray90009,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text(
                                                "Placeholder",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ),
                                            Spacer(),
                                            _buildAddOn(context),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.h),
                                  decoration:
                                      AppDecoration.outlineDeeppurpleA20001,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildFrameThree(
                                        context,
                                        television: ImageConstant.imgTelevision,
                                        bitcoin: "Bitcoin",
                                      ),
                                      _buildFrameThree(
                                        context,
                                        television:
                                            ImageConstant.imgEthereumEth,
                                        bitcoin: "Ethereum",
                                      ),
                                      Container(
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 13.v),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h),
                                              child: _buildTetherUsdt(
                                                context,
                                                cryptoText: "Tether",
                                              ),
                                            ),
                                            SizedBox(height: 13.v),
                                            _buildFrameThree(
                                              context,
                                              television:
                                                  ImageConstant.imgBitcoinBtc,
                                              bitcoin: "Bitcoin",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Container(
                                  margin: EdgeInsets.only(right: 8.h),
                                  decoration: AppDecoration.fillGray90009,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.v),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Label",
                                            style: CustomTextStyles
                                                .titleSmallInterGray10005,
                                          ),
                                          SizedBox(height: 5.v),
                                          Container(
                                            padding: EdgeInsets.all(11.h),
                                            decoration: AppDecoration
                                                .outlineDeeppurpleA400011
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5,
                                            ),
                                            child: Row(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgClockGray30002,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 12.h,
                                                    top: 2.v,
                                                  ),
                                                  child: Text(
                                                    "Input",
                                                    style: CustomTextStyles
                                                        .bodyMediumGray10002,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: SizedBox(
                                                    height: 20.v,
                                                    child: VerticalDivider(
                                                      width: 2.h,
                                                      thickness: 2.v,
                                                      color: appTheme.gray10002,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Text(
                                                    "Placeholder",
                                                    style: CustomTextStyles
                                                        .bodyMediumGray10002,
                                                  ),
                                                ),
                                                Spacer(),
                                                _buildAddOn1(context),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      _buildDarkModeOnSection(
                                        context,
                                        bitcoin: "Bitcoin",
                                        arrowUp:
                                            ImageConstant.imgArrowupGray10002,
                                        ethereumEth:
                                            ImageConstant.imgEthereumEth,
                                        bitcoin1: "Ethereum",
                                        arrowUp1:
                                            ImageConstant.imgArrowupGray10002,
                                        tetherUsdt: ImageConstant.imgTetherUsdt,
                                        bitcoin2: "Tether",
                                        arrowUp2:
                                            ImageConstant.imgArrowupGray10002,
                                        bitcoin3: "Bitcoin",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
  Widget _buildAddOn(BuildContext context) {
    return CustomCheckboxButton(
      width: 74.h,
      text: "Add-on",
      value: addOn,
      textStyle: CustomTextStyles.bodyMediumBluegray400,
      isRightCheck: true,
      onChange: (value) {
        addOn = value;
      },
    );
  }

  /// Section Widget
  Widget _buildAddOn1(BuildContext context) {
    return CustomCheckboxButton(
      width: 74.h,
      text: "Add-on",
      value: addOn1,
      textStyle: CustomTextStyles.bodyMediumGray30002,
      isRightCheck: true,
      onChange: (value) {
        addOn1 = value;
      },
    );
  }

  /// Common widget
  Widget _buildFrameThree(
    BuildContext context, {
    required String television,
    required String bitcoin,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: television,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              bitcoin,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray90009,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowup,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTetherUsdt(
    BuildContext context, {
    required String cryptoText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgTetherUsdt,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            cryptoText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray90009,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowup,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDarkModeOnSection(
    BuildContext context, {
    required String bitcoin,
    required String arrowUp,
    required String ethereumEth,
    required String bitcoin1,
    required String arrowUp1,
    required String tetherUsdt,
    required String bitcoin2,
    required String arrowUp2,
    required String bitcoin3,
  }) {
    return Container(
      decoration: AppDecoration.outlineDeeppurpleA200011,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray90009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    bitcoin,
                    style:
                        CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: arrowUp,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray90009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ethereumEth,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    bitcoin1,
                    style:
                        CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: arrowUp1,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: AppDecoration.fillGray90009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 13.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: tetherUsdt,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        bitcoin2,
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer
                            .copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: arrowUp2,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ],
                ),
                SizedBox(height: 25.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBitcoinBtc,
                      height: 1.v,
                      width: 16.h,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        bitcoin3,
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer
                            .copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
