import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_phone_number.dart';
// ignore_for_file: must_be_immutable
class SignUpPhoneNumberFilledStateScreen extends StatelessWidget {SignUpPhoneNumberFilledStateScreen({Key? key}) : super(key: key);

Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

TextEditingController phoneNumberController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: 375.h, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Almost Done!", style: CustomTextStyles.headlineSmallGray90002)), SizedBox(height: 16.v), Container(width: 294.h, margin: EdgeInsets.only(left: 2.h, right: 48.h), child: Text("Enter your phone number and we’ll text you a code to activate your account.", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumAeonikErrorContainer.copyWith(height: 1.60))), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomPhoneNumber(country: selectedCountry, controller: phoneNumberController, onTap: (Country value) {selectedCountry = value;})), Spacer(flex: 26), CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 2.h), buttonTextStyle: CustomTextStyles.titleMediumBold, onPressed: () {onTapContinue(context);}), Spacer(flex: 73)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 375.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v))); } 
/// Navigates to the enterVerificationCodeOneScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.enterVerificationCodeOneScreen); } 
 }
