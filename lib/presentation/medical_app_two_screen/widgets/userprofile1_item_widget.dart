import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 185.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPexelsTimaMir182x185,
            height: 182.v,
            width: 185.h,
          ),
          SizedBox(height: 13.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Angela Sandra",
                style: CustomTextStyles.titleMediumUrbanistBlack90002,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCloseTeal700,
                height: 14.v,
                width: 18.h,
                margin: EdgeInsets.only(
                  left: 33.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconoirShoppingBagAlt,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 2.v,
                ),
                child: Text(
                  "Optometry at LUTH ",
                  style: CustomTextStyles.titleSmallUrbanistGray600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
