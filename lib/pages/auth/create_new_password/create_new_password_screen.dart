import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/pages/auth/login_screen/login_screen.dart';
import 'package:medicon/services/auth_services/auth_provider.dart';
import 'package:medicon/utils/router.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';
// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends StatefulWidget {

  CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context) { 
    return Consumer<AuthServices>(
      builder: (context, createNewPasswordVM, child) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false, 
            appBar: _buildAppBar(context), 
            body: SizedBox(
              width: SizeUtils.width, 
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), 
                child: Form(
                  key: _formKey, 
                  child: Container(
                    width: 375.h, 
                    padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          "Create New Password", 
                          style: CustomTextStyles.headlineSmallGray90002Bold
                        ), 
                        SizedBox(height: 17.v), 
                        Container(
                          width: 261.h, 
                          margin: EdgeInsets.only(right: 81.h), 
                          child: Text(
                            "Your new password must different from previous password.", 
                            maxLines: 2, 
                            overflow: TextOverflow.ellipsis, 
                            style: CustomTextStyles.bodyMediumManropeErrorContainer.copyWith(height: 1.70)
                          )
                        ), 
                        SizedBox(height: 19.v), 
                        CustomTextFormField(
                          controller: newpasswordController, 
                          hintText: "Password", 
                          hintStyle: CustomTextStyles.bodyLargeOnError, 
                          textInputType: TextInputType.visiblePassword, 
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
                          obscureText: !_passwordVisible,
                          borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
                        ), 
                        SizedBox(height: 16.v), 
                        CustomTextFormField(
                          controller: confirmpasswordController, 
                          hintText: "Confirm Password", 
                          hintStyle: CustomTextStyles.bodyLargeOnError, 
                          textInputAction: TextInputAction.done, 
                          textInputType: TextInputType.visiblePassword, 
                          suffix: IconButton(
                            icon: Icon(
                              _confirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                              color: const Color(0xff9BA59F),
                            ),
                            onPressed: () {
                              setState(() {
                                _confirmPasswordVisible = !_confirmPasswordVisible;
                              });
                            },
                          ),
                          suffixConstraints: BoxConstraints(maxHeight: 56.v), 
                          obscureText: !_confirmPasswordVisible,
                          borderDecoration: TextFormFieldStyleHelper.fillGrayTL8
                        ), 
                        SizedBox(height: 32.v), 
                        CustomElevatedButton(
                          text: "Create New Password", 
                          busy: createNewPasswordVM.isLoading,
                          onPressed: () async {
                            if (newpasswordController.text.isEmpty ||
                              confirmpasswordController.text.isEmpty) {
                              errorSnackBar(context, 'All fields cannot be empty');
                            }else{
                              String msg = await createNewPasswordVM.resetPassword(
                                password: newpasswordController.text,
                                confirmPassword: confirmpasswordController.text,
                                context: context,
                              );

                              if(msg == "Verification Successful"){
                                nextPageAndRemovePrevious(context, page:  LoginScreen());
                              }else{
                                errorSnackBar(context!, msg);
                              }
                            }
                          }
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

  /// Navigates to the successStateNewPasswordScreen when the action is triggered.
  onTapCreateNewPassword(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.successStateNewPasswordScreen); 
  } 
}
