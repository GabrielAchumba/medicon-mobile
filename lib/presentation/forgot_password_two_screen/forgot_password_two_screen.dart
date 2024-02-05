import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';

class ForgotPasswordTwoScreen extends StatelessWidget {
  const ForgotPasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Onboarding",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Upload file from your computer ",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 5.adaptSize,
                    width: 5.adaptSize,
                    margin: EdgeInsets.only(top: 146.v),
                    decoration: BoxDecoration(
                      color: appTheme.greenA100,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 150.v,
                    width: 154.h,
                    margin: EdgeInsets.only(left: 1.h),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(left: 3.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 23.h,
                              vertical: 8.v,
                            ),
                            decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder75,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 11.v,
                              ),
                              decoration:
                                  AppDecoration.outlineGray90002.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgTrophy,
                                    height: 35.v,
                                    width: 23.h,
                                  ),
                                  SizedBox(height: 15.v),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgTelevisionGray10001,
                                    height: 25.v,
                                    width: 82.h,
                                  ),
                                  SizedBox(height: 7.v),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgTelevisionGray10001,
                                    height: 25.v,
                                    width: 82.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 5.adaptSize,
                            width: 5.adaptSize,
                            margin: EdgeInsets.only(top: 20.v),
                            decoration: BoxDecoration(
                              color: appTheme.greenA100,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration:
                              IconButtonStyleHelper.outlineOnPrimaryContainer,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCheck,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 5.adaptSize,
                    width: 5.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 40.v,
                      bottom: 106.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.greenA100,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 41.v),
              Text(
                "Profile Created!",
                style: CustomTextStyles.headlineSmallGray90002Bold,
              ),
              SizedBox(height: 20.v),
              Text(
                "Your profile was created successfully! .",
                style: CustomTextStyles.bodyLarge_1,
              ),
              SizedBox(height: 53.v),
              SizedBox(
                width: 343.h,
                child: Text(
                  "To login into your account, we'll need to verify your information, but don't worry—we'll get back to you quickly. Stay tuned.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeGray700.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "I Understand",
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 60.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 375.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v),
      ),
    );
  }
}
