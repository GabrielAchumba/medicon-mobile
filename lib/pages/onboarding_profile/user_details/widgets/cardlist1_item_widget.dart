import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class Cardlist1ItemWidget extends StatelessWidget {
  Cardlist1ItemWidget({
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCard!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.outlineIndigo5002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder13,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.fillGray10002.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionDeepPurpleA20001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                bottom: 12.v,
              ),
              child: Text(
                "Proof of medical qualification",
                style: CustomTextStyles.titleSmallGray700,
              ),
            ),
            Container(
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 10.v),
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.outlineGray90014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheck,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
