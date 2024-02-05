import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CreateNewPasswordOneScreen extends StatelessWidget {CreateNewPasswordOneScreen({Key? key}) : super(key: key);

TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Create New Password", style: CustomTextStyles.headlineSmallGray90002Bold), SizedBox(height: 17.v), Container(width: 261.h, margin: EdgeInsets.only(right: 81.h), child: Text("Your new password must different from previous password.", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumManropeErrorContainer.copyWith(height: 1.70))), SizedBox(height: 19.v), CustomTextFormField(controller: newpasswordController, hintText: "Password", hintStyle: CustomTextStyles.bodyLargeOnError, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 22.adaptSize, width: 22.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGrayTL8), SizedBox(height: 16.v), CustomTextFormField(controller: confirmpasswordController, hintText: "Confirm Password", hintStyle: CustomTextStyles.bodyLargeOnError, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 22.adaptSize, width: 22.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGrayTL8), SizedBox(height: 32.v), CustomElevatedButton(text: "Create New Password", onPressed: () {onTapCreateNewPassword(context);}), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Navigates to the successStateNewPasswordScreen when the action is triggered.
onTapCreateNewPassword(BuildContext context) { Navigator.pushNamed(context, AppRoutes.successStateNewPasswordScreen); } 
 }
