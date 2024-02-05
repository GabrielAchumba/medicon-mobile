import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  const Userprofile7ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100023.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPexelsTimaMir50x50,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              child: Text(
                                "Samuel Ayinla",
                                style: CustomTextStyles
                                    .titleMediumGothamProGray90005,
                              ),
                            ),
                            CustomElevatedButton(
                              height: 23.v,
                              width: 69.h,
                              text: "APT00457",
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle:
                                  CustomTextStyles.bodySmallPoppinsPrimary,
                            ),
                          ],
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "Patient  .  Male  .  34yrs",
                          style: CustomTextStyles.bodyMediumAeonikGray700_1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            margin: EdgeInsets.only(right: 11.h),
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarDateRange,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "0:01:20",
                    style: CustomTextStyles.bodyMediumAeonikBluegray40015,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClockPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "10:00AM - 11:00AM",
                    style: CustomTextStyles.bodyMediumAeonikBluegray40015,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
