import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_checkbox_button.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class CreateANewAccountScreen extends StatelessWidget {CreateANewAccountScreen({Key? key}) : super(key: key);

bool createANewAccountChecklist = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Terms of service", style: theme.textTheme.headlineSmall), SizedBox(height: 39.v), Container(width: 325.h, margin: EdgeInsets.only(right: 17.h), child: Text("To continue, please accept our terms of service", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumGray700.copyWith(height: 1.33))), SizedBox(height: 27.v), SizedBox(width: 339.h, child: Text("Sample: If you're not old enough to manage your own Google Account, you need permission from your parent or legal guardian to use one. We ask that your parent or legal guardian read these terms with you.\nIf you're a parent or legal guardian and you give permission for your child to use our services, then these terms apply to you. You're responsible for your child's activity on our services.\nPlease note that some Google services may have additional age requirements outlined in their service-specific additional terms and policies.", maxLines: 12, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumAeonikGray60001.copyWith(height: 1.67))), SizedBox(height: 27.v), _buildCreateANewAccountChecklist(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAgreeButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Section Widget
Widget _buildCreateANewAccountChecklist(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 96.h), child: CustomCheckboxButton(text: "I agree with all terms of service", value: createANewAccountChecklist, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodyMediumAeonikBluegray40015, onChange: (value) {createANewAccountChecklist = value;})); } 
/// Section Widget
Widget _buildAgreeButton(BuildContext context) { return CustomElevatedButton(text: "Agree", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), buttonTextStyle: theme.textTheme.titleSmall!, onPressed: () {onTapAgreeButton(context);}); } 
/// Navigates to the signUpPhoneNumberFilledStateScreen when the action is triggered.
onTapAgreeButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpPhoneNumberFilledStateScreen); } 
 }
