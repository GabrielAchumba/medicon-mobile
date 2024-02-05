import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_checkbox_button.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {LoginOneScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

bool rememberMe = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Welcome  back", style: theme.textTheme.headlineSmall)), SizedBox(height: 15.v), Align(alignment: Alignment.centerLeft, child: Text("Fill in your details or continue with your social handles", style: CustomTextStyles.bodyMediumAeonikBluegray400)), SizedBox(height: 33.v), _buildEmail(context), SizedBox(height: 16.v), _buildPassword(context), SizedBox(height: 20.v), _buildRemember(context), SizedBox(height: 31.v), _buildSignIn(context), SizedBox(height: 35.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 6.v, bottom: 9.v), child: SizedBox(width: 44.h, child: Divider(color: appTheme.indigo5002))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Or sign in with", style: CustomTextStyles.bodySmallManropeErrorContainer)), Padding(padding: EdgeInsets.only(top: 6.v, bottom: 9.v), child: SizedBox(width: 56.h, child: Divider(color: appTheme.indigo5002, indent: 12.h)))]), SizedBox(height: 31.v), _buildButtonSocial(context), SizedBox(height: 36.v), GestureDetector(onTap: () {onTapTxtDonthaveanaccount(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Don’t have an account? ", style: CustomTextStyles.bodyMediumAeonikff82808f.copyWith(decoration: TextDecoration.underline)), TextSpan(text: "Create account", style: CustomTextStyles.titleSmallff161518.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left)), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return CustomTextFormField(controller: emailController, hintText: "Email", hintStyle: CustomTextStyles.bodyLargeBluegray300, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL12); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return CustomTextFormField(controller: passwordController, hintText: "Password", hintStyle: CustomTextStyles.bodyLargeBluegray300, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGrayTL12); } 
/// Section Widget
Widget _buildRemember(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomCheckboxButton(text: "Remember me", value: rememberMe, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {rememberMe = value;}), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("Forgot Password?", style: CustomTextStyles.bodyMediumAeonikPrimary.copyWith(decoration: TextDecoration.underline)))]); } 
/// Section Widget
Widget _buildSignIn(BuildContext context) { return CustomElevatedButton(text: "Sign in", onPressed: () {onTapSignIn(context);}); } 
/// Section Widget
Widget _buildFacebook(BuildContext context) { return CustomOutlinedButton(width: 163.h, text: "Facebook", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineIndigo, buttonTextStyle: CustomTextStyles.titleMediumGray90002); } 
/// Section Widget
Widget _buildGoogle(BuildContext context) { return CustomOutlinedButton(width: 164.h, text: "Google", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineIndigo, buttonTextStyle: CustomTextStyles.titleMediumGray90002); } 
/// Section Widget
Widget _buildButtonSocial(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildFacebook(context), _buildGoogle(context)]); } 
/// Navigates to the doctorsDashboardScreen when the action is triggered.
onTapSignIn(BuildContext context) { Navigator.pushNamed(context, AppRoutes.doctorsDashboardScreen); } 
/// Navigates to the createANewAccountTwoScreen when the action is triggered.
onTapTxtDonthaveanaccount(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createANewAccountTwoScreen); } 
 }
