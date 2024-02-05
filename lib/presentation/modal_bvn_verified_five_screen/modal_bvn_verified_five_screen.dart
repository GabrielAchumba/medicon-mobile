import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';

class ModalBvnVerifiedFiveScreen extends StatelessWidget {
  const ModalBvnVerifiedFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 343.h,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 9.v),
              CustomImageView(
                imagePath: ImageConstant.imgCheckCircle,
                height: 47.adaptSize,
                width: 47.adaptSize,
              ),
              SizedBox(height: 8.v),
              Text(
                "Password Changed",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 10.v),
              Container(
                width: 235.h,
                margin: EdgeInsets.symmetric(horizontal: 28.h),
                child: Text(
                  "Your password has been successfully changed, proceed to continue.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumAeonikBluegray400.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                text: "Proceed to Sign in",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
