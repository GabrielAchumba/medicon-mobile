import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile6ItemWidget extends StatelessWidget {
  const Userprofile6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.4,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 149.v,
                width: 307.h,
                decoration: BoxDecoration(
                  color: appTheme.greenA100.withOpacity(0.49),
                  borderRadius: BorderRadius.circular(
                    15.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPexelsTimaMir60x60,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        radius: BorderRadius.circular(
                          30.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          top: 8.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Femi Babalola",
                              style: CustomTextStyles.titleMedium18,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "Pending appointment",
                              style: CustomTextStyles.bodyMediumAeonikGray10002,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            style:
                                CustomTextStyles.bodyMediumAeonikBluegray40015,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgClockPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4.h, 3.v, 1.h, 2.v),
                          child: Text(
                            "10:00AM - 11:00AM",
                            style:
                                CustomTextStyles.bodyMediumAeonikBluegray40015,
                          ),
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
    );
  }
}
