import '../onboarding_profile_two_screen/widgets/cardlist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';

class OnboardingProfileTwoScreen extends StatelessWidget {const OnboardingProfileTwoScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) { 
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context), 
        body: SizedBox(
          width: SizeUtils.width, 
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v), 
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v), 
              padding: EdgeInsets.symmetric(horizontal: 16.h), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    "Verify my Account Generalist", 
                    style: theme.textTheme.headlineSmall
                  ), 
                  SizedBox(height: 11.v), 
                  Text(
                    "Verify my details as a general practitioner", 
                    style: theme.textTheme.bodyLarge
                  ), 
                  SizedBox(height: 70.v), 
                  _buildProgressBar(context), 
                  SizedBox(height: 43.v), 
                  _buildCardList(context), 
                  SizedBox(height: 32.v), 
                  CustomElevatedButton(
                    text: "Submit for verification", 
                    buttonTextStyle: theme.textTheme.titleSmall!, 
                    onPressed: () {
                      onTapSubmitForVerification(context);
                    }
                  ), 
                  SizedBox(height: 16.v), 
                  CustomOutlinedButton(
                    text: "Save for later", 
                    buttonStyle: CustomButtonStyles.outlinePrimary, 
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary, 
                    onPressed: () {
                      onTapSaveForLater(context);
                    }
                  )
                ]
              )
            )
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
  /// Section Widget
  Widget _buildProgressBar(BuildContext context) { 
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 3.v, bottom: 2.v), 
            child: Container(
              height: 8.v, 
              width: 309.h, 
              decoration: BoxDecoration(
                color: appTheme.gray30001, 
                borderRadius: BorderRadius.circular(4.h)
              ), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.h), 
                child: LinearProgressIndicator(
                  value: 0.17, 
                  backgroundColor: appTheme.gray30001, 
                  valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)
                )
              )
            )
          )
        ), 
        Padding(
          padding: EdgeInsets.only(left: 12.h), 
          child: Text(
            "1/6", 
            style: CustomTextStyles.bodyMediumGothamProBluegray800
          )
        )
      ]
    ); 
  } 
  /// Section Widget
  Widget _buildCardList(BuildContext context) { 
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(), 
      shrinkWrap: true, 
      separatorBuilder: (context, index) {
        return SizedBox(height: 16.v);
      }, 
      itemCount: 6, 
      itemBuilder: (context, index) {
        return Cardlist1ItemWidget(
          onTapCard: () {
            onTapCard(context);
          }
        );
      }
    ); 
  } 
  /// Navigates to the createNewPasswordScreen when the action is triggered.
  onTapCard(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.createNewPasswordScreen); 
  } 
  /// Navigates to the forgotPasswordOneScreen when the action is triggered.
  onTapSubmitForVerification(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.forgotPasswordOneScreen); 
  } 
  /// Navigates to the onboardingProfileFourScreen when the action is triggered.
  onTapSaveForLater(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.onboardingProfileFourScreen); 
  } 
 }
