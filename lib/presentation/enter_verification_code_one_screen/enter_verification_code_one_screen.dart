import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_pin_code_text_field.dart';

class EnterVerificationCodeOneScreen extends StatelessWidget {const EnterVerificationCodeOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Authentication Code", style: CustomTextStyles.headlineSmallGray90002), SizedBox(height: 18.v), Container(width: 298.h, margin: EdgeInsets.only(right: 44.h), child: Text("Enter 5-digit code we just texted to your phone number, +234 8976889043", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLarge_1.copyWith(height: 1.60))), SizedBox(height: 35.v), CustomPinCodeTextField(context: context, onChanged: (value) {}), SizedBox(height: 22.v), Text("Use different phone number", style: CustomTextStyles.bodyMediumAeonikBluegray900), SizedBox(height: 33.v), CustomElevatedButton(text: "Continue", buttonTextStyle: CustomTextStyles.titleMediumBold, onPressed: () {onTapContinue(context);}), SizedBox(height: 16.v), CustomElevatedButton(text: "Resend Code", buttonStyle: CustomButtonStyles.fillGrayTL12, buttonTextStyle: CustomTextStyles.titleMediumPrimary), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Navigates to the successStateNewPasswordOneScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.successStateNewPasswordOneScreen); } 
 }
