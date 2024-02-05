import '../upcoming_appointment_one_screen/widgets/frame16_item_widget.dart';
import '../upcoming_appointment_one_screen/widgets/frame18_item_widget.dart';
import '../upcoming_appointment_one_screen/widgets/frame20_item_widget.dart';
import '../upcoming_appointment_one_screen/widgets/frame22_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';

class UpcomingAppointmentOneScreen extends StatelessWidget {
  const UpcomingAppointmentOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Medical Record",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "View patient medical record",
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 37.v),
                        _buildAppointmentTime(context),
                        SizedBox(height: 30.v),
                        _buildConsultationFee(context),
                        SizedBox(height: 30.v),
                        _buildPatientInfo(context),
                        SizedBox(height: 30.v),
                        _buildPatientNotes(context),
                        SizedBox(height: 19.v),
                        _buildDiagnoses(context),
                        SizedBox(height: 19.v),
                        _buildDoctorInstructions(context),
                        SizedBox(height: 19.v),
                        _buildPrescription(context),
                        SizedBox(height: 19.v),
                        _buildReferral(context),
                        SizedBox(height: 19.v),
                        _buildSymptoms(context),
                        SizedBox(height: 27.v),
                        _buildPastMedicalHistory(context),
                        SizedBox(height: 26.v),
                        _buildPastSurgicalHistory(context),
                        SizedBox(height: 26.v),
                        _buildPastFamilyHistory(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSave(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 375.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(16.h, 21.v, 335.h, 21.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildAmButton(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 33.h,
      text: "am",
      margin: EdgeInsets.only(top: 1.v),
      buttonStyle: CustomButtonStyles.fillDeepOrangeTL12,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildDateButton(BuildContext context) {
    return CustomElevatedButton(
      height: 27.v,
      width: 81.h,
      text: "21 Sept, 22",
      buttonStyle: CustomButtonStyles.fillLightGreen,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildAppointmentTime(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 26.v),
      decoration: AppDecoration.outlineGray100022.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60.adaptSize,
            width: 60.adaptSize,
            margin: EdgeInsets.only(bottom: 26.v),
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.outlineLightGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle39853,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 85.v,
            width: 227.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUserGray90007,
                  height: 72.adaptSize,
                  width: 72.adaptSize,
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 70.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Andrew Grey",
                          style: CustomTextStyles
                              .titleMediumPlusJakartaDisplayGray90007,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Psychological, Ph.d",
                          style: CustomTextStyles.bodySmallAeonikGray400,
                        ),
                        SizedBox(height: 13.v),
                        SizedBox(
                          width: 157.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 6.v,
                                  bottom: 5.v,
                                ),
                                child: Text(
                                  "10:30",
                                  style:
                                      CustomTextStyles.bodySmallAeonikGray90007,
                                ),
                              ),
                              _buildAmButton(context),
                              _buildDateButton(context),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConsultationFee(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.lemon.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: Text(
              "Consultation fee",
              style: CustomTextStyles.bodyMediumAeonikOnPrimaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 1.h,
            ),
            child: Text(
              "₦3,000",
              style: CustomTextStyles.titleSmallBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAppointmentButton(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 69.h,
      text: "APT00457",
      margin: EdgeInsets.only(
        left: 27.h,
        bottom: 30.v,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodySmallPoppinsPrimary,
    );
  }

  /// Section Widget
  Widget _buildPatientInfo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100023.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillGray10002.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder25,
                  ),
                  child: Text(
                    "WA",
                    style: CustomTextStyles.titleMediumGothamProPrimary,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wumi Adeniyi",
                        style: CustomTextStyles.titleMediumGothamProGray90005,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "Patient  .  Male  .  34yrs",
                        style: CustomTextStyles.bodyMediumAeonikGray700_1,
                      ),
                    ],
                  ),
                ),
                _buildAppointmentButton(context),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            margin: EdgeInsets.only(right: 11.h),
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendarDateRange,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "0:01:20",
                    style: CustomTextStyles.bodyMediumAeonikBluegray40015,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClockPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "10:00AM - 11:00AM",
                    style: CustomTextStyles.bodyMediumAeonikBluegray40015,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMoreNotesButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "Add More Notes",
      buttonStyle: CustomButtonStyles.outlineRedA,
      buttonTextStyle: CustomTextStyles.titleSmallRedA400,
    );
  }

  /// Section Widget
  Widget _buildPatientNotes(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillPinkF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Doctor’s Note",
            style: CustomTextStyles.titleMediumNohemiGray90006_1,
          ),
          SizedBox(height: 17.v),
          Container(
            width: 285.h,
            margin: EdgeInsets.only(right: 16.h),
            child: Text(
              "I’m having strong headache, stomach pain, high body temperature, cold, not eating well not sleeping well.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallAeonikBlack90002.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          _buildAddMoreNotesButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMoreDiagnosesButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "Add More Diagnoses",
      margin: EdgeInsets.only(left: 2.h),
      buttonStyle: CustomButtonStyles.outlineDeepPurpleA,
      buttonTextStyle: CustomTextStyles.titleSmallDeeppurpleA700,
    );
  }

  /// Section Widget
  Widget _buildDiagnoses(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillDeeppurpleA400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Doctor’s Diagnoses",
              style: CustomTextStyles.titleMediumNohemiGray90006_1,
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckGreen500,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Malaria",
                    style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckGreen500,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Gastroenteritis",
                    style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckGreen500,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "Cough",
                    style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          _buildAddMoreDiagnosesButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMoreInstructionsButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "Add More Instructions",
      buttonStyle: CustomButtonStyles.outlineAmber,
      buttonTextStyle: CustomTextStyles.bodyMediumGothamProAmber700,
    );
  }

  /// Section Widget
  Widget _buildDoctorInstructions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillAmber.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Doctor’s Instruction",
            style: CustomTextStyles.titleMediumNohemiGray90006_1,
          ),
          SizedBox(height: 16.v),
          Container(
            width: 245.h,
            margin: EdgeInsets.only(right: 56.h),
            child: Text(
              "Get some rest, exercise well, eat well and take medications as instructed. ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallAeonikBlack90002.copyWith(
                height: 1.14,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          _buildAddMoreInstructionsButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrescribeMoreButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 49.v,
      text: "Prescribe More",
      margin: EdgeInsets.only(right: 8.h),
      buttonStyle: CustomButtonStyles.outlineGreenA,
      buttonTextStyle: CustomTextStyles.titleSmallGreenA700,
    );
  }

  /// Section Widget
  Widget _buildPrescription(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Doctor’s Prescription",
            style: CustomTextStyles.titleMediumNohemiGray90006,
          ),
          SizedBox(height: 28.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckGreen500,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "SEM 008",
                  style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckGreen500,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "NICO 008",
                  style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckGreen500,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "TRINO 008",
                  style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckGreen500,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "AMART 008",
                  style: CustomTextStyles.bodyMediumAeonikOnPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 26.v),
          _buildPrescribeMoreButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReferButton(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      text: "Refer",
      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
      buttonTextStyle: CustomTextStyles.titleSmall14,
    );
  }

  /// Section Widget
  Widget _buildReferral(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillDeeppurpleA200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "Referral ",
            style: CustomTextStyles.titleMediumNohemiGray90006,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 66.v,
            width: 213.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 7.v,
                    width: 72.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 8.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray90003,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 66.adaptSize,
                        width: 66.adaptSize,
                        radius: BorderRadius.circular(
                          12.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Ahmed Smith",
                              style: CustomTextStyles.titleMediumGray90007,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "Psychiatrist",
                              style: CustomTextStyles.bodyLargeGray90007,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          _buildReferButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSymptomsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 78.h,
      text: "Symptoms",
      buttonStyle: CustomButtonStyles.fillDeepPurpleATL12,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikDeeppurpleA200,
    );
  }

  /// Section Widget
  Widget _buildSymptoms(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillDeeppurpleA2001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSymptomsButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.72.v,
            spacing: 20.72.h,
            children: List<Widget>.generate(6, (index) => Frame16ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastMedicalHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 128.h,
      text: "Past medical history",
      buttonStyle: CustomButtonStyles.fillIndigoTL12,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikIndigo70001,
    );
  }

  /// Section Widget
  Widget _buildPastMedicalHistory(BuildContext context) {
    return Container(
      width: 330.h,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPastMedicalHistoryButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.72.v,
            spacing: 20.72.h,
            children: List<Widget>.generate(6, (index) => Frame18ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastSurgicalHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 131.h,
      text: "Past surgical history",
      buttonStyle: CustomButtonStyles.fillRedC,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikPink40001,
    );
  }

  /// Section Widget
  Widget _buildPastSurgicalHistory(BuildContext context) {
    return Container(
      width: 330.h,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPastSurgicalHistoryButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.72.v,
            spacing: 20.72.h,
            children: List<Widget>.generate(6, (index) => Frame20ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastFamilyHistory(BuildContext context) {
    return Container(
      width: 330.h,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 139.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillIndigo300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Text(
              "Past family history",
              style: CustomTextStyles.bodyMediumPoppinsIndigo300,
            ),
          ),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.72.v,
            spacing: 20.72.h,
            children: List<Widget>.generate(6, (index) => Frame22ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomOutlinedButton(
      text: "Save",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 38.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}
