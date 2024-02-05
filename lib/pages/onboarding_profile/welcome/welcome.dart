import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatefulWidget {

  final String fullName;
  const WelcomeScreen({required this.fullName, super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override Widget build(BuildContext context) { 
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 375.h, 
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 88.v), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                "Welcome  ${widget.fullName}", 
                style: theme.textTheme.headlineSmall
              ), 
              SizedBox(height: 13.v), 
              Text(
                "Click continue to proceed ", 
                style: theme.textTheme.bodyLarge
              ), 
              Spacer(flex: 70), 
              Container(
                width: 322.h, 
                margin: EdgeInsets.only(right: 20.h), 
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Your Telehealth practice is almost ready! The next step is to upload relevant documents for verification. Tap on  ", 
                        style: CustomTextStyles.bodyLargeff82808f
                      ), 
                      TextSpan(
                        text: "Continue", 
                        style: CustomTextStyles.bodyLargeff5fd148.copyWith(decoration: TextDecoration.underline)
                      ), 
                      TextSpan(
                        text: " to begin.", 
                        style: CustomTextStyles.bodyLargeff82808f
                      )
                    ]
                  ), 
                  textAlign: TextAlign.left
                )
              ), 
              SizedBox(height: 30.v), 
              CustomElevatedButton(
                text: "Continue", 
                onPressed: () {
                  onTapContinue(context);
                }
              ), 
              Spacer(flex: 29)
            ]
          )
        )
      )
    ); 
  } 

  /// Navigates to the onboardingProfileFiveScreen when the action is triggered.
  onTapContinue(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.onboardingProfileFiveScreen); 
  } 
}
