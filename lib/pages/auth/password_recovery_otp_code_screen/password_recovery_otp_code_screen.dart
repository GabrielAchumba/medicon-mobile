import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/pages/auth/create_new_password/create_new_password_screen.dart';
import 'package:medicon/services/auth_services/auth_provider.dart';
import 'package:medicon/utils/router.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_pin_code_text_field.dart';
import 'package:provider/provider.dart';

class PasswordRecoveryOtpCodeScreen extends StatefulWidget {

  final String email;

  const PasswordRecoveryOtpCodeScreen({required this.email, super.key});
  
  @override
  State<PasswordRecoveryOtpCodeScreen> createState() => _PasswordRecoveryOtpCodeScreenState();
}

class _PasswordRecoveryOtpCodeScreenState extends State<PasswordRecoveryOtpCodeScreen> {

  TextEditingController code = TextEditingController();
  Timer? countdown;
  int remainingTime = 300;

  @override
  void initState() {
    countdown = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      remainingTime--;
      setState(() {});
      if (remainingTime == 0) {
        countdown?.cancel();
        return;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    countdown?.cancel();
    super.dispose();
  }

  bool removeImage = true;

  @override Widget build(BuildContext context) { 
    return Consumer<AuthServices>(
      builder: (context, passwordRecoveryOTPCodeVM, child) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false, 
            appBar: _buildAppBar(context), 
            body: Container(
              width: 375.h, 
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    "Verify reset code", 
                    style: theme.textTheme.headlineSmall
                  ), 
                  SizedBox(height: 12.v), 
                  Container(
                    width: 304.h, 
                    margin: EdgeInsets.only(right: 38.h), 
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Enter code that we have sent to your ", 
                            style: CustomTextStyles.bodyLargeff82808f_1
                          ), 
                          TextSpan(
                            text: widget.email, 
                            style: CustomTextStyles.bodyLargeff161518
                          )
                        ]
                      ), 
                      textAlign: 
                      TextAlign.left
                    )
                  ), 
                  SizedBox(height: 37.v), 
                  Padding(
                    padding: EdgeInsets.only(right: 1.h), 
                    child: CustomPinCodeTextField(
                      context: context, 
                      controller: code,
                      onChanged: (value) {}
                    )
                  ), 
                  SizedBox(height: 32.v), 
                  CustomElevatedButton(
                    text: "Verify", 
                    busy: passwordRecoveryOTPCodeVM.isLoading,
                    onPressed: () async {
                      String msg = await passwordRecoveryOTPCodeVM.verifyEmailForgotPassword(
                        context: context,
                        email: widget.email,
                        otp: code.text,
                      );

                      if(msg == "Email verification successful"){
                        nextPage(context, page: CreateNewPasswordScreen());
                      }else{
                        errorSnackBar(context!, msg);
                      }
                    }
                  ), 
                  SizedBox(height: 5.v)
                ]
              )
            ),
            bottomSheet: Container(
                color: AppColors.lemon,
                padding: EdgeInsets.all(20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Haven’t received?  ',
                        style: GoogleFonts.rubik(
                          color: AppColors.textBlack,
                          fontSize: 15.h,
                        ),
                        children: [
                          TextSpan(
                            text: remainingTime == 0
                                ? 'Resend'
                                : remainingTime.toString() + (remainingTime < 10 ? ' sec' : ' secs'),
                            style: GoogleFonts.rubik(
                              color: AppColors.darkGreen,
                              fontSize: 15.h,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (remainingTime < 1) {
                                  /* provider.forgotPassword(
                                    context: context,
                                    email: widget.email,
                                    isResend: true,
                                  ); */

                                  await passwordRecoveryOTPCodeVM.forgotPassword(
                                    email: widget.email,
                                    context: context,
                                    isResend: true,
                                  );
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
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

  /// Navigates to the createNewPasswordOneScreen when the action is triggered.
  onTapVerify(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.createNewPasswordOneScreen); 
  } 
}
