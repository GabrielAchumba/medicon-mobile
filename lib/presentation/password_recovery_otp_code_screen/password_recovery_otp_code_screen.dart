import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_pin_code_text_field.dart';

class PasswordRecoveryOtpCodeScreen extends StatelessWidget {const PasswordRecoveryOtpCodeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Verify reset code", style: theme.textTheme.headlineSmall), SizedBox(height: 12.v), Container(width: 304.h, margin: EdgeInsets.only(right: 38.h), child: RichText(text: TextSpan(children: [TextSpan(text: "Enter code that we have sent to your email ", style: CustomTextStyles.bodyLargeff82808f_1), TextSpan(text: "robert******o@email.com", style: CustomTextStyles.bodyLargeff161518)]), textAlign: TextAlign.left)), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(right: 1.h), child: CustomPinCodeTextField(context: context, onChanged: (value) {})), SizedBox(height: 32.v), CustomElevatedButton(text: "Verify", onPressed: () {onTapVerify(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Navigates to the createNewPasswordOneScreen when the action is triggered.
onTapVerify(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createNewPasswordOneScreen); } 
 }
