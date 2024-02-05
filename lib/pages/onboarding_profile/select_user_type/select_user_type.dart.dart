import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/snackbar.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/pages/onboarding_profile/user_details/user_details.dart';
import 'package:medicon/services/onboarding_services/onboarding_service.dart';
import 'package:medicon/utils/router.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class SelectUserScreen extends StatefulWidget {

  final String country;

  const SelectUserScreen({required this.country, super.key});

  @override
  State<SelectUserScreen> createState() => _SelectUserScreenState();
}

class _SelectUserScreenState extends State<SelectUserScreen> {

  TextEditingController country = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetUserSpecialization());
  } 

  @override Widget build(BuildContext context) { 
    return Consumer<OnboardingServices>(
      builder: (context, selectUserTypeVM, child) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context), 
            body: Container(
              width: 375.h, 
              padding: EdgeInsets.symmetric(horizontal: 16.h), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  SizedBox(height: 28.v), 
                  Text(
                    "Which of these are you?", 
                    style: CustomTextStyles.bodyLargeBluegray90019
                  ), 
                  SizedBox(height: 22.v), 
                  _buildList(context, selectUserTypeVM), 
                  SizedBox(height: 33.v), 
                  CustomElevatedButton(
                    text: "Continue", 
                    busy: false,
                    onPressed: () {
                      if (selectUserTypeVM.userType == "Is Empty") {
                          errorSnackBar(context, 'Who you are cannot be empty');
                      } else {
                        nextPage(context, page: UserDetailsScreen(
                          country: widget.country,
                          userType: selectUserTypeVM.userType
                        ));
                      }
                      
                    },
                  )
                ]
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
  Widget _buildList(BuildContext context, OnboardingServices selectUserTypeVM) { 
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.h), 
          child: _buildSpecialistItem(
            context, label: "General Practitioner", 
            selectUserTypeVM: selectUserTypeVM,
            boxDecoration: selectUserTypeVM.isGeneralPractitioner  == true ? 
              BoxDecoration(
                color: AppColors.textBlack
              ) :AppDecoration.fillGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
          )
        ), 
        Padding(
          padding: EdgeInsets.only(left: 8.h), 
          child: _buildSpecialistItem(
            context, label: "Specialist", 
            selectUserTypeVM: selectUserTypeVM,
            boxDecoration: selectUserTypeVM.isSpecialist == true ? 
              BoxDecoration(
                color: AppColors.textBlack
              ) :AppDecoration.fillGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
          )
        )
      ]
    ); 
  } 

  /// Common widget
  Widget _buildSpecialistItem(BuildContext context, {
    required String label,
    required OnboardingServices selectUserTypeVM,
    required BoxDecoration boxDecoration
    }) { 
    return Expanded(
      child: SizedBox(
        width: double.maxFinite, 
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 42.v), 
          decoration: boxDecoration, 
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              CustomIconButton(
                height: 48.adaptSize, 
                width: 48.adaptSize, 
                padding: EdgeInsets.all(11.h), 
                decoration: IconButtonStyleHelper.fillOnPrimaryContainer, 
                child: CustomImageView(
                  imagePath: ImageConstant.imgFontistoDoctorAmber700
                ),
                onTap: () {
                  selectUserTypeVM.updateUserType(label);
                },
              ), 
              SizedBox(height: 16.v), 
              Text(
                label, 
                style: CustomTextStyles.bodyLargeAmber700.copyWith(color: appTheme.amber700)
              )
            ]
          )
        )
      )
    ); 
  } 

  /// Navigates to the onboardingProfileSevenScreen when the action is triggered.
  onTapContinue(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.onboardingProfileSevenScreen); 
  } 
}
