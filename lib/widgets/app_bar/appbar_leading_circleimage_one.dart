import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingCircleimageOne extends StatelessWidget {
  AppbarLeadingCircleimageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder22,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 61.adaptSize,
          width: 61.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            22.h,
          ),
        ),
      ),
    );
  }
}
