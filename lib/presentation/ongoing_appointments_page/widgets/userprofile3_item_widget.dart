import 'frame11_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget({
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
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray100021.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 57.v,
              width: 296.h,
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
                                    3, (index) => Frame11ItemWidget()),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 65.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGray10003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder13,
                      ),
                      child: Text(
                        "Ongoing",
                        style: CustomTextStyles.bodySmallPoppinsPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Appointment ID:",
                    style: CustomTextStyles.bodyMediumGothamProff82808f,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "23243u8",
                    style: CustomTextStyles.bodyMediumGothamProff5fd148,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 14.v),
          ],
        ),
      ),
    );
  }
}
