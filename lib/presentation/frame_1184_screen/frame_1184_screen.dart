import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class Frame1184Screen extends StatelessWidget {Frame1184Screen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Forgot your password?", style: theme.textTheme.headlineSmall)), SizedBox(height: 9.v), Container(width: 323.h, margin: EdgeInsets.only(left: 2.h, right: 19.h), child: Text("Type your email address and we will send the verification code.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.25))), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomTextFormField(controller: emailController, hintText: "helenasharapova@mail.com", hintStyle: CustomTextStyles.bodyLargeGray90002, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL12)), SizedBox(height: 32.v), CustomElevatedButton(text: "Send reset code", margin: EdgeInsets.only(left: 2.h), onPressed: () {onTapSendResetCode(context);}), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Navigates to the passwordRecoveryOtpCodeScreen when the action is triggered.
onTapSendResetCode(BuildContext context) { Navigator.pushNamed(context, AppRoutes.passwordRecoveryOtpCodeScreen); } 
 }
