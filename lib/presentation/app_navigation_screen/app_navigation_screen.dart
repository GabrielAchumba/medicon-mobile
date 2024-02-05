import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spacing",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.spacingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logo",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dropdown",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dropdownScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Nav Bar - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.navBarContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cards",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cardsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Top Navigation",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.topNavigationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkbox",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkboxScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Medical App Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medicalAppTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - 100",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13ProMax100Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 Pro Max - 113",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13ProMax113Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - Four One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - Six One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSixOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modal - BVN Verified",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.modalBvnVerifiedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Upcoming Appointment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.upcomingAppointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Date of Birth",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dateOfBirthScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile  One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modal - BVN Verified Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.modalBvnVerifiedFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "14. Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13. Enter - Verification Code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterVerificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13. Enter - Verification Code One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.enterVerificationCodeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modal - BVN Verified Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.modalBvnVerifiedFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "15. Success State - New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successStateNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Consultation Scheduler",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.consultationSchedulerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Upcoming Appointment One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.upcomingAppointmentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modal - BVN Verified One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.modalBvnVerifiedOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "14. Forgot Password Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 1184",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame1184Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ongoing appointment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ongoingAppointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile  Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Doctors Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.doctorsDashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - Five One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingFiveOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13. Enter - Verification Code Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.enterVerificationCodeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Login One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose Specialty Filter",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chooseSpecialtyFilterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "14. Forgot Password One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modal - BVN Verified Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.modalBvnVerifiedTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile  Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Profile Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingProfileSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13. Enter - Verification Code Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.enterVerificationCodeThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create a new account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createANewAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "12. Sign Up - Phone Number - Filled State",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpPhoneNumberFilledStateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5 Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.4 Password Recovery - OTP Code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordRecoveryOtpCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "15. Success State - New Password One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.successStateNewPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.5 Create New Password One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create a new account One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createANewAccountOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create a new account Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createANewAccountTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Modal - BVN Verified Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.modalBvnVerifiedThreeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
