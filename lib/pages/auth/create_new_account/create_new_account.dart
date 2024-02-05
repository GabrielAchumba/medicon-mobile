import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_checkbox_button.dart';
import 'package:medicon/widgets/custom_drop_down.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CreateNewAccountScreen extends StatefulWidget {
  CreateNewAccountScreen({
    super.key,
  });
  @override
  State<CreateNewAccountScreen> createState() => _CreateNewAccountScreenState();
}

class _CreateNewAccountScreenState extends State<CreateNewAccountScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  bool checklist = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context) { 
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false, 
        appBar: _buildAppBar(context), 
        body: Form(
          key: _formKey, 
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 11.v), 
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v), 
              padding: EdgeInsets.symmetric(horizontal: 16.h), 
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft, 
                    child: Text(
                      "Create a new account", 
                      style: theme.textTheme.headlineSmall
                    )
                  ), 
                  SizedBox(height: 13.v), 
                  Align(
                    alignment: Alignment.centerLeft, 
                    child: Container(
                      width: 320.h, 
                      margin: EdgeInsets.only(right: 22.h), 
                      child: Text(
                        "Fund your wallet, pay for services and manage your payments in one place", 
                        maxLines: 2, 
                        overflow: TextOverflow.ellipsis, 
                        style: CustomTextStyles.bodyMediumAeonikBluegray400.copyWith(height: 1.43)
                      ),
                    ),
                  ), 
                  SizedBox(height: 31.v), 
                  _buildFirstName(context), 
                  SizedBox(height: 17.v), 
                  _buildLastName(context), 
                  SizedBox(height: 16.v), 
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v), 
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkOnerror, 
                        height: 22.adaptSize, 
                        width: 22.adaptSize
                      )
                    ), 
                    hintText: "Select Gender", 
                    hintStyle: CustomTextStyles.titleSmallOnError, 
                    items: dropdownItemList, 
                    borderDecoration: DropDownStyleHelper.fillGrayTL8, 
                    onChanged: (value) {}
                  ), 
                  SizedBox(height: 16.v), 
                  _buildDateOfBirth(context), 
                  SizedBox(height: 16.v), 
                  _buildEmail(context), 
                  SizedBox(height: 16.v), 
                  _buildPassword(context), 
                  SizedBox(height: 16.v), 
                  _buildConfirmPassword(context), 
                  SizedBox(height: 20.v), 
                  _buildChecklist(context), 
                  SizedBox(height: 25.v), 
                  _buildCreateNewAccount(context), 
                  SizedBox(height: 28.v), 
                  GestureDetector(
                    onTap: () {
                      onTapTxtAlreadyhavean(context);
                    }, 
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ", 
                            style: CustomTextStyles.bodyMediumAeonikff82808f.copyWith(decoration: TextDecoration.underline)
                          ), 
                          TextSpan(
                            text: "Sign in", 
                            style: CustomTextStyles.titleSmallff161518.copyWith(decoration: TextDecoration.underline)
                          )
                        ]
                      ), 
                      textAlign: TextAlign.left
                    ),
                  ),
                ],
              ),
            ),
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
        margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v)
      )
    ); 
  } 

  /// Section Widget
  Widget _buildFirstName(BuildContext context) { 
    return CustomTextFormField(
      controller: firstNameController, 
      hintText: "First Name", 
      hintStyle: CustomTextStyles.titleSmallOnError, 
      contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v), 
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
    ); 
  } 

  /// Section Widget
  Widget _buildLastName(BuildContext context) { 
    return CustomTextFormField(
      controller: lastNameController, 
      hintText: "Last Name", 
      hintStyle: CustomTextStyles.titleSmallOnError, 
      contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v), 
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
    ); 
  } 

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) { 
    return CustomTextFormField(
      controller: dateOfBirthController, 
      hintText: "Date of Birth", 
      hintStyle: CustomTextStyles.titleSmallOnError, 
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v), 
        child: CustomImageView(
          imagePath: ImageConstant.imgCalendarDateRangeOnerror, 
          height: 22.adaptSize, 
          width: 22.adaptSize
        )
      ), 
      suffixConstraints: BoxConstraints(maxHeight: 56.v), 
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
    ); 
  } 

  /// Section Widget
  Widget _buildEmail(BuildContext context) { 
    return CustomTextFormField(
      controller: emailController, 
      hintText: "Email Address", 
      hintStyle: CustomTextStyles.titleSmallOnError, 
      textInputType: TextInputType.emailAddress, 
      contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v)
    ); 
  } 

  /// Section Widget
  Widget _buildPassword(BuildContext context) { 
    return CustomTextFormField(
      controller: passwordController, 
      hintText: "Password", 
      hintStyle: CustomTextStyles.titleSmallOnError, 
      textInputType: TextInputType.visiblePassword, 
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v), 
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoff, 
          height: 22.adaptSize, 
          width: 22.adaptSize
        )
      ), 
      suffixConstraints: BoxConstraints(maxHeight: 56.v), 
      obscureText: true, 
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
    ); 
  } 

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) { 
    return CustomTextFormField(
      controller: confirmPasswordController, 
      hintText: "Confirm Password", 
      hintStyle: CustomTextStyles.titleSmallOnError, 
      textInputAction: TextInputAction.done, 
      textInputType: TextInputType.visiblePassword, 
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v), 
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoff, 
          height: 22.adaptSize, 
          width: 22.adaptSize
        )
      ), 
      suffixConstraints: BoxConstraints(maxHeight: 56.v), 
      obscureText: true, 
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
    ); 
  } 

  /// Section Widget
  Widget _buildChecklist(BuildContext context) { 
    return Align(
      alignment: Alignment.centerLeft, 
      child: Padding(
        padding: EdgeInsets.only(right: 47.h), 
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft, 
          text: "By creating an account, you agree to our?  User Agreement and Terms & Conditions", 
          isExpandedText: true, 
          value: checklist, 
          textStyle: CustomTextStyles.bodyMediumAeonikOnError, 
          onChange: (value) {
            checklist = value;
          }
        )
      )
    ); 
  } 

  /// Section Widget
  Widget _buildCreateNewAccount(BuildContext context) { 
    return CustomElevatedButton(
      text: "Create new account", 
      busy: false,
      buttonTextStyle: theme.textTheme.titleSmall!, 
      onPressed: () {
        onTapCreateNewAccount(context);
      }
    ); 
  } 

  /// Navigates to the createANewAccountScreen when the action is triggered.
  onTapCreateNewAccount(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.createANewAccountScreen); 
  } 

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.loginOneScreen); 
  } 
}