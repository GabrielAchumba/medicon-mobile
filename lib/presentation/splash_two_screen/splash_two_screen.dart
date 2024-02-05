import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: 375.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpOnprimarycontainer,
                    height: 28.v,
                    width: 29.h,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Medicon",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
