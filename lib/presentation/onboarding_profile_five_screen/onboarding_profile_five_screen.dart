import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_drop_down.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class OnboardingProfileFiveScreen extends StatelessWidget {OnboardingProfileFiveScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { 
  return SafeArea(
    child: Scaffold(
      appBar: _buildAppBar(context), 
      body: Container(
        width: 375.h, 
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              "Add History ", 
              style: theme.textTheme.headlineSmall
            ), 
            Spacer(flex: 62), 
            Text(
              "Which country are you from?", 
              style: CustomTextStyles.bodyLargeBluegray90019
            ), 
            SizedBox(height: 21.v), 
            CustomDropDown(
              icon: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v), 
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkOnerror, 
                  height: 22.adaptSize, 
                  width: 22.adaptSize
                )
              ), 
              hintText: "Select Country", 
              hintStyle: CustomTextStyles.titleMediumOnError, 
              items: dropdownItemList, 
              borderDecoration: DropDownStyleHelper.fillGrayTL8, 
              onChanged: (value) {}
            ), 
            SizedBox(height: 32.v), 
            CustomElevatedButton(
              text: "Continue", 
              onPressed: () {
                onTapContinue(context);
              }
            ), 
            Spacer(flex: 37)
          ]
        )
      )
    )
  ); 
} 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { 
  return CustomAppBar(
    leadingWidth: 375.h, 
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgVector, 
      margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v)
    )
  ); 
} 
/// Navigates to the onboardingProfileSixScreen when the action is triggered.
onTapContinue(BuildContext context) { 
  Navigator.pushNamed(context, AppRoutes.onboardingProfileSixScreen); 
  } 
}
