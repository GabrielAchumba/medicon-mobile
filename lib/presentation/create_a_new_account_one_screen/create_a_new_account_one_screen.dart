import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_checkbox_button.dart';
import 'package:medicon/widgets/custom_drop_down.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CreateANewAccountOneScreen extends StatelessWidget {CreateANewAccountOneScreen({Key? key}) : super(key: key);

TextEditingController firstNameEditTextController = TextEditingController();

TextEditingController lastNameEditTextController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController dateEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController inputPasswordEditTextController = TextEditingController();

TextEditingController eyeoffEditTextController = TextEditingController();

bool createAccountCheckBox = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 11.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Create a new account", style: theme.textTheme.headlineSmall)), SizedBox(height: 13.v), Align(alignment: Alignment.centerLeft, child: Container(width: 320.h, margin: EdgeInsets.only(right: 22.h), child: Text("Fund your wallet, pay for services and manage your payments in one place", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumAeonikBluegray400.copyWith(height: 1.43)))), SizedBox(height: 31.v), _buildFirstNameEditText(context), SizedBox(height: 17.v), _buildLastNameEditText(context), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkOnerror, height: 22.adaptSize, width: 22.adaptSize)), hintText: "Female", hintStyle: CustomTextStyles.bodyMediumAeonikBluegray900_1, items: dropdownItemList, onChanged: (value) {}), SizedBox(height: 16.v), _buildDateEditText(context), SizedBox(height: 16.v), _buildEmailEditText(context), SizedBox(height: 16.v), _buildInputPasswordEditText(context), SizedBox(height: 16.v), _buildEyeoffEditText(context), SizedBox(height: 20.v), _buildCreateAccountCheckBox(context), SizedBox(height: 25.v), _buildCreateNewAccountButton(context), SizedBox(height: 28.v), GestureDetector(onTap: () {onTapTxtAlreadyhavean(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "Already have an account? ", style: CustomTextStyles.bodyMediumAeonikff82808f.copyWith(decoration: TextDecoration.underline)), TextSpan(text: "Sign in", style: CustomTextStyles.titleSmallff161518.copyWith(decoration: TextDecoration.underline))]), textAlign: TextAlign.left))])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Section Widget
Widget _buildFirstNameEditText(BuildContext context) { return CustomTextFormField(controller: firstNameEditTextController, hintText: "helena", hintStyle: CustomTextStyles.bodyLargeBluegray900, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL12); } 
/// Section Widget
Widget _buildLastNameEditText(BuildContext context) { return CustomTextFormField(controller: lastNameEditTextController, hintText: "sharapova", hintStyle: CustomTextStyles.bodyLargeBluegray900, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v)); } 
/// Section Widget
Widget _buildDateEditText(BuildContext context) { return CustomTextFormField(controller: dateEditTextController, hintText: "13 January 1990", hintStyle: CustomTextStyles.bodyMediumAeonikBluegray900_1, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgCalendarDateRangeOnerror, height: 22.adaptSize, width: 22.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v)); } 
/// Section Widget
Widget _buildEmailEditText(BuildContext context) { return CustomTextFormField(controller: emailEditTextController, hintText: "helenasharapova@mail.com", hintStyle: CustomTextStyles.bodyLargeGray90002, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL12); } 
/// Section Widget
Widget _buildInputPasswordEditText(BuildContext context) { return CustomTextFormField(controller: inputPasswordEditTextController, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillGrayTL12); } 
/// Section Widget
Widget _buildEyeoffEditText(BuildContext context) { return CustomTextFormField(controller: eyeoffEditTextController, hintText: "Min. 8 characters", hintStyle: CustomTextStyles.bodyLargeManropeBluegray10007, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL12); } 
/// Section Widget
Widget _buildCreateAccountCheckBox(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 47.h), child: CustomCheckboxButton(alignment: Alignment.centerLeft, text: "By creating an account, you agree to our?  User Agreement and Terms & Conditions", isExpandedText: true, value: createAccountCheckBox, textStyle: CustomTextStyles.bodyMediumAeonikOnError, onChange: (value) {createAccountCheckBox = value;}))); } 
/// Section Widget
Widget _buildCreateNewAccountButton(BuildContext context) { return CustomElevatedButton(text: "Create new account", buttonTextStyle: theme.textTheme.titleSmall!, onPressed: () {onTapCreateNewAccountButton(context);}); } 
/// Navigates to the createANewAccountScreen when the action is triggered.
onTapCreateNewAccountButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createANewAccountScreen); } 
/// Navigates to the loginOneScreen when the action is triggered.
onTapTxtAlreadyhavean(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginOneScreen); } 
 }
