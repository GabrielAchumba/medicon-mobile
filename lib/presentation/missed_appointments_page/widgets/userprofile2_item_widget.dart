import 'frame9_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineGray100021.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5.v),
            SizedBox(
              height: 57.v,
              width: 300.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPexelsTimaMir50x50,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            25.h,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Samuel Ayinla",
                                style: CustomTextStyles
                                    .titleMediumGothamProGray90005,
                              ),
                              SizedBox(height: 14.v),
                              Wrap(
                                runSpacing: 6.v,
                                spacing: 6.h,
                                children: List<Widget>.generate(
                                    3, (index) => Frame9ItemWidget()),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 23.v,
                    width: 69.h,
                    text: "APT00457",
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.bodySmallPoppinsPrimary,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
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
                  SizedBox(
                    width: 76.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCalendarDateRange,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "0:01:20",
                            style:
                                CustomTextStyles.bodyMediumAeonikBluegray40015,
                          ),
                        ),
                      ],
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
      ),
    );
  }
}
