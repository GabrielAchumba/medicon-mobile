import 'package:medicon/pages/onboarding_profile/success/success.dart';
import 'package:medicon/services/onboarding_services/onboarding_service.dart';
import 'package:medicon/utils/router.dart';
import 'package:provider/provider.dart';

import '../user_details/widgets/cardlist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';

class UserDetailsScreen extends StatefulWidget {

  final String country;
  final String userType;

  const UserDetailsScreen({required this.country,
  required this.userType, super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {

  BuildContext? _context;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetMedicalQualificationIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetMedicalRegistrationIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetAdditionalCertificateIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetCurrentEmploymentIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetCurrentYearLicenseIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetIdentityVerificationIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetAdditionalCertificateIsPending());
    Future.microtask(() => Provider.of<OnboardingServices>(context, listen: false).GetSpecialtyCertificateIsPending());
  }

  @override Widget build(BuildContext context) { 
    _context = context;
    return Consumer<OnboardingServices>(
      builder: (context, userDetailsVM, child) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context), 
            body: SizedBox(
              width: SizeUtils.width, 
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 13.v), 
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.v), 
                  padding: EdgeInsets.symmetric(horizontal: 16.h), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Text(
                        "Verify my Account Generalist", 
                        style: theme.textTheme.headlineSmall
                      ), 
                      SizedBox(height: 11.v), 
                      Text(
                        "Verify my details as a general practitioner", 
                        style: theme.textTheme.bodyLarge
                      ), 
                      SizedBox(height: 70.v), 
                      if(userDetailsVM.Index > 0)
                        _buildProgressBar(context, userDetailsVM), 
                      if(userDetailsVM.Index > 0)
                       SizedBox(height: 43.v), 
                      _buildCardList(context, userDetailsVM), 
                      SizedBox(height: 32.v), 
                      CustomElevatedButton(
                        text: "Submit for verification", 
                        buttonTextStyle: theme.textTheme.titleSmall!, 
                        busy: userDetailsVM.isLoading,
                        onPressed: () async {
                          if(userDetailsVM.medicalQualificationFiles.isNotEmpty == true){
                            await userDetailsVM.StoreProofOfMedicalQualification(
                              context: context, 
                              medicalQualificationFiles: userDetailsVM.medicalQualificationFiles
                            );
                          }

                          if(userDetailsVM.medicalRegistrationFiles.isNotEmpty == true){
                            await userDetailsVM.StoreMedicalRegistration(
                              context: _context!, 
                              medicalRegistrationFiles: userDetailsVM.medicalRegistrationFiles
                            );
                          }

                          if(userDetailsVM.currentYearLicenseFiles.isNotEmpty == true){
                            await userDetailsVM.StoreCurrentYearLicenseFile(
                              context: _context!, 
                              currentYearLicenseFiles: userDetailsVM.currentYearLicenseFiles
                            );
                          }

                          if(userDetailsVM.additionalCertificateFiles.isNotEmpty == true){
                            await userDetailsVM.StoreAdditionalCertificate(
                              context: _context!, 
                              additionalCertificateFiles: userDetailsVM.additionalCertificateFiles
                            );
                          }

                          if(userDetailsVM.identityVerificationFiles.isNotEmpty == true){
                            await userDetailsVM.StoreIdentityVerificationFile(
                              context: _context!, 
                              identityVerificationFiles: userDetailsVM.identityVerificationFiles
                            );
                          }

                          if(userDetailsVM.currentEmploymentFiles.isNotEmpty == true){
                            await userDetailsVM.StoreCurrentEmploymentFile(
                              context: _context!, 
                              currentEmploymentFiles: userDetailsVM.currentEmploymentFiles
                            );
                          }

                          if(userDetailsVM.specialtyCertificateFiles.isNotEmpty == true){
                            await userDetailsVM.StoreSpecialtyCertificateFile(
                              context: _context!, 
                              specialtyCertificateFiles: userDetailsVM.specialtyCertificateFiles
                            );
                          }
                          Map<String, dynamic> user = Map<String, dynamic> ();
                          user["country"] = widget.country;
                          user["specialization"] = widget.userType;
                          String errorMessage = await userDetailsVM.UpdateUser(context: _context!, user: user);
                          print("errorMessage: $errorMessage");
                          nextPage( _context!, page: const SuccessScreen());
                        }
                      ), 
                      SizedBox(height: 16.v), 
                      CustomOutlinedButton(
                        text: "Save for later", 
                        buttonStyle: CustomButtonStyles.outlinePrimary, 
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary, 
                        onPressed: () {
                          onTapSaveForLater(context);
                        }
                      )
                    ]
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
  Widget _buildProgressBar(BuildContext context, OnboardingServices userDetailsVM) { 
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 3.v, bottom: 2.v), 
            child: Container(
              height: 8.v, 
              width: 309.h, 
              decoration: BoxDecoration(
                color: appTheme.gray30001, 
                borderRadius: BorderRadius.circular(4.h)
              ), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.h), 
                child: LinearProgressIndicator(
                  value: 0.17, 
                  backgroundColor: appTheme.gray30001, 
                  valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)
                )
              )
            )
          )
        ), 
        Padding(
          padding: EdgeInsets.only(left: 12.h), 
          child: Text(
            userDetailsVM.Index == 0 ? '':
            userDetailsVM.Index > userDetailsVM.notVerifiedProfiles.length ? 
            '${userDetailsVM.notVerifiedProfiles.length}/${userDetailsVM.notVerifiedProfiles.length}':
            '${userDetailsVM.Index}/${userDetailsVM.notVerifiedProfiles.length}',
            style: CustomTextStyles.bodyMediumGothamProBluegray800
          )
        )
      ]
    ); 
  } 

  /// Section Widget
  Widget _buildCardList(BuildContext context, OnboardingServices userDetailsVM) { 
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(), 
      shrinkWrap: true, 
      separatorBuilder: (context, index) {
        return SizedBox(height: 16.v);
      }, 
      itemCount: 6, 
      itemBuilder: (context, index) {
        return Cardlist1ItemWidget(
          title: userDetailsVM.notVerifiedProfiles[index].title,
          imagePath: userDetailsVM.notVerifiedProfiles[index].icon,
          onTapCard: () async {
            for(var i = 0; i < userDetailsVM.notVerifiedProfiles.length; i++){
              userDetailsVM.notVerifiedProfiles[i].isActive = false;
            }
            userDetailsVM.notVerifiedProfiles[index].isActive = true;
            userDetailsVM.uploadingOnboardingFiles(context, index);
          },
          isPendingVerification: userDetailsVM.notVerifiedProfiles[index].isPendingVerification,
        );
      }
    ); 
  } 

  /// Navigates to the onboardingProfileFourScreen when the action is triggered.
  onTapSaveForLater(BuildContext context) { 
    Navigator.pushNamed(context, AppRoutes.onboardingProfileFourScreen); 
  } 
}
