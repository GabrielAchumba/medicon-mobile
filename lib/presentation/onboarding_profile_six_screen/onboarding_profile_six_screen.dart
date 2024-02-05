import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';

class OnboardingProfileSixScreen extends StatelessWidget {const OnboardingProfileSixScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 28.v), Text("Which of these are you?", style: CustomTextStyles.bodyLargeBluegray90019), SizedBox(height: 22.v), _buildList(context), SizedBox(height: 33.v), CustomElevatedButton(text: "Continue", onPressed: () {onTapContinue(context);})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Section Widget
Widget _buildList(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 8.h), child: _buildSpecialistItem(context, label: "General Practitioner")), Padding(padding: EdgeInsets.only(left: 8.h), child: _buildSpecialistItem(context, label: "Specialist"))]); } 
/// Common widget
Widget _buildSpecialistItem(BuildContext context, {required String label, }) { return Expanded(child: SizedBox(width: double.maxFinite, child: Container(padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 42.v), decoration: AppDecoration.fillGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder13), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.fillOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgFontistoDoctorAmber700)), SizedBox(height: 16.v), Text(label, style: CustomTextStyles.bodyLargeAmber700.copyWith(color: appTheme.amber700))])))); } 
/// Navigates to the onboardingProfileSevenScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingProfileSevenScreen); } 
 }
