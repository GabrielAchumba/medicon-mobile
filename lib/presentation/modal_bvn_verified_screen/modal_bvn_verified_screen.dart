import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';

class ModalBvnVerifiedScreen extends StatelessWidget {const ModalBvnVerifiedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: 343.h, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 18.v), child: Column(children: [SizedBox(height: 9.v), CustomImageView(imagePath: ImageConstant.imgCheckCircle, height: 47.adaptSize, width: 47.adaptSize), SizedBox(height: 5.v), Text("Success", style: theme.textTheme.headlineSmall), SizedBox(height: 12.v), Container(width: 225.h, margin: EdgeInsets.symmetric(horizontal: 33.h), child: Text("Your account has been successfully confirmed, proceed to sign in.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumAeonikBluegray400.copyWith(height: 1.43))), SizedBox(height: 18.v), CustomElevatedButton(text: "Proceed to Sign in", onPressed: () {onTapProceedToSignIn(context);})])))); } 
/// Navigates to the onboardingProfileOneScreen when the action is triggered.
onTapProceedToSignIn(BuildContext context) { Navigator.pushNamed(context, AppRoutes.onboardingProfileOneScreen); } 
 }
