import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/pages/auth/create_new_account/create_new_account.dart';
import 'package:medicon/pages/auth/forgot_password/forgot_password_screen.dart';
import 'package:medicon/pages/dashboards/doctors_dashboard_screen/doctors_dashboard_screen.dart';
import 'package:medicon/pages/onboarding_profile/welcome/welcome.dart';
import 'package:medicon/services/auth_services/auth_provider.dart';
import 'package:medicon/utils/router.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_checkbox_button.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  
  LoginScreen({
    super.key,
  });
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController inputPasswordEditTextController = TextEditingController();
  bool _passwordVisible = false;

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) { 
    return Consumer<AuthServices>(
      builder: (ctx, loginVM, child) { 
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false, 
            appBar: _buildAppBar(context), 
            body: SizedBox(
              width: SizeUtils.width, 
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ), child: Form(
                  key: _formKey, 
                  child: Container(
                    width: 375.h, 
                    padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v), 
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft, 
                          child: Text(
                            "Welcome  back", 
                            style: theme.textTheme.headlineSmall
                          )
                        ), 
                        SizedBox(height: 15.v), 
                        Align(
                          alignment: Alignment.centerLeft, 
                          child: Text(
                            "Sign in to continue to your account", 
                            style: CustomTextStyles.bodyMediumAeonikBluegray400
                          )
                        ), 
                        SizedBox(height: 33.v), 
                        _buildEmailEditText(context), 
                        SizedBox(height: 16.v), 
                        _buildInputPasswordEditText(context), 
                        SizedBox(height: 20.v), 
                        _buildRememberRow(context), 
                        SizedBox(height: 31.v),
                        _buildSignInButton(context, loginVM), 
                        SizedBox(height: 35.v), 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 6.v, bottom: 9.v), 
                              child: SizedBox(
                                width: 44.h, 
                                child: Divider(
                                  color: appTheme.indigo5002
                                )
                              )
                            ), 
                            Padding(
                              padding: EdgeInsets.only(left: 12.h), 
                              child: Text(
                                "Or sign in with", 
                                style: CustomTextStyles.bodySmallManropeErrorContainer
                              )
                            ), 
                            Padding(
                              padding: EdgeInsets.only(top: 6.v, bottom: 9.v), 
                              child: SizedBox(
                                width: 56.h, 
                                child: Divider(
                                  color: appTheme.indigo5002, 
                                  indent: 12.h
                                )
                              )
                            )
                          ]
                        ), 
                        SizedBox(height: 31.v), 
                        _buildButtonSocial(context), 
                        SizedBox(height: 36.v), 
                        GestureDetector(
                          onTap: () {
                            nextPage(context, page: CreateNewAccountScreen());
                          }, 
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don’t have an account? ", 
                                  style: CustomTextStyles.bodyMediumAeonikff82808f.copyWith(
                                    decoration: TextDecoration.underline
                                  )
                                ), 
                                TextSpan(
                                  text: "Create account", 
                                  style: CustomTextStyles.titleSmallff161518.copyWith(
                                    decoration: TextDecoration.underline
                                  )
                                )
                              ]
                            ), 
                            textAlign: TextAlign.left
                            )
                          ), 
                          SizedBox(height: 5.v)
                        ]
                      )
                    )
                  )
                )
              )
            )
        ); 
    });
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
  Widget _buildEmailEditText(BuildContext context) { 
    return CustomTextFormField(
      controller: emailEditTextController, 
      hintText: "helenasharapova@mail.com", 
      hintStyle: CustomTextStyles.bodyLargeGray90002, 
      textInputType: TextInputType.emailAddress, 
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h, 
        vertical: 18.v
      ), 
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL12
    ); 
  } 

  /// Section Widget
  Widget _buildInputPasswordEditText(BuildContext context) { 
    return CustomTextFormField(
      controller: inputPasswordEditTextController, 
      textInputAction: TextInputAction.done, 
      /* suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), 
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoff, 
          height: 24.adaptSize, 
          width: 24.adaptSize
        )
      ),  */
      suffix: IconButton(
        icon: Icon(
          _passwordVisible ? Icons.visibility : Icons.visibility_off,
          color: const Color(0xff9BA59F),
        ),
        onPressed: () {
          setState(() {
            _passwordVisible = !_passwordVisible;
          });
        },
      ),
      suffixConstraints: BoxConstraints(maxHeight: 56.v), 
      obscureText: !_passwordVisible
    ); 
  } 

  /// Section Widget
  Widget _buildRememberRow(BuildContext context) { 
      return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          CustomCheckboxButton(
          text: "Remember me", 
          value: rememberMe, 
          padding: EdgeInsets.symmetric(vertical: 1.v), 
          onChange: (value) {
            rememberMe = value;
          },
        ), 
        GestureDetector(
          onTap: () {
            nextPage(context, page: ForgetPasswordScreen());
          }, 
          child: Padding(
            padding: EdgeInsets.only(top: 5.v), 
            child: Text(
              "Forgot Password?", 
              style: CustomTextStyles.bodyMediumAeonikPrimary.copyWith(
                decoration: TextDecoration.underline
              )
            )
          )
        )
      ]
    );
  } 

  /// Section Widget
  Widget _buildSignInButton(BuildContext context, AuthServices loginVM) { 
    return CustomElevatedButton(
      text: "Sign in", 
      busy: loginVM.isLoading,
      onPressed: () async {
        if (emailEditTextController.text.isEmpty ||
            inputPasswordEditTextController.text.isEmpty) {
          errorSnackBar(context, 'All fields cannot be empty');
        } else {
          String msg = await loginVM.login(
            context: context,
            email: emailEditTextController.text,
            password: inputPasswordEditTextController.text,
          );

          if(msg == "Login Success"){
            SharedPreferences sf = await SharedPreferences.getInstance();
            bool? isOnbaordingPending = sf.getBool("isOnbaordingPending");
            String? fullName = sf.getString("fullName");
            if(isOnbaordingPending == false || isOnbaordingPending == null){
              nextPageOnly(context, page:  WelcomeScreen(fullName: fullName!));
            }else{
              nextPageOnly(context, page:  DoctorsDashboardScreen());
            }
          }else{
            errorSnackBar(context!, msg);
          }
        }
      }
    ); 
  } 

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) { 
    return CustomOutlinedButton(
      width: 163.h, text: "Facebook", 
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h), 
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook, 
          height: 24.adaptSize, 
          width: 24.adaptSize
        )
      ), 
      buttonStyle: CustomButtonStyles.outlineIndigo, 
      buttonTextStyle: CustomTextStyles.titleMediumGray90002
    ); 
  } 

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) { 
    return CustomOutlinedButton(
      width: 164.h, 
      text: "Google", 
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h), 
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle, 
          height: 24.adaptSize, 
          width: 24.adaptSize
        )
      ), 
      buttonStyle: CustomButtonStyles.outlineIndigo, 
      buttonTextStyle: CustomTextStyles.titleMediumGray90002
    ); 
  } 

  /// Section Widget
  Widget _buildButtonSocial(BuildContext context) { 
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [_buildFacebookButton(context), _buildGoogleButton(context)]
    ); 
  } 
}