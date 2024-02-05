import '../ongoing_appointment_screen/widgets/frame24_item_widget.dart';
import '../ongoing_appointment_screen/widgets/frame26_item_widget.dart';
import '../ongoing_appointment_screen/widgets/frame28_item_widget.dart';
import '../ongoing_appointment_screen/widgets/frame30_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';

class OngoingAppointmentScreen extends StatelessWidget {
  const OngoingAppointmentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 25.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 154.v),
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: Column(
                      children: [
                        Container(
                          height: 11.v,
                          width: 60.h,
                          decoration: BoxDecoration(
                            color: appTheme.indigo50,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildMedicalRecordsRow(context),
                        SizedBox(height: 19.v),
                        Divider(
                          color: appTheme.gray10006,
                        ),
                        SizedBox(height: 30.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  decoration:
                                      AppDecoration.fillGray5002.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    bottom: 8.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dr. Joseph Brostito",
                                        style: CustomTextStyles
                                            .titleMediumGothamProGray90005,
                                      ),
                                      SizedBox(height: 7.v),
                                      Text(
                                        "Dental Specialist",
                                        style: CustomTextStyles
                                            .bodyMediumGothamProBluegray30001,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 68.h,
                              right: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "Appointment ID:",
                                    style: CustomTextStyles
                                        .bodyMediumGothamProBluegray30001,
                                  ),
                                ),
                                _buildAppointmentButton(context),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 41.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              right: 57.h,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgThumbsUpBlueGray3000116x16,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 2.v,
                                  ),
                                  child: Text(
                                    "Sunday, 12 June",
                                    style:
                                        CustomTextStyles.bodySmallBluegray30001,
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: 119.h,
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgClockBlueGray30001,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 8.h,
                                          bottom: 2.v,
                                        ),
                                        child: Text(
                                          "11:00 - 12:00 AM",
                                          style: CustomTextStyles
                                              .bodySmallBluegray30001,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 50.v),
                        Divider(
                          color: appTheme.gray10006,
                        ),
                        SizedBox(height: 10.v),
                        _buildAmountChargedRow(context),
                        SizedBox(height: 11.v),
                        Divider(
                          color: appTheme.gray10006,
                        ),
                        SizedBox(height: 31.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgUserBlueGray10005,
                                  height: 48.v,
                                  width: 47.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    bottom: 8.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mr. Florence",
                                        style: CustomTextStyles
                                            .titleMediumGothamProGray90005,
                                      ),
                                      SizedBox(height: 8.v),
                                      Text(
                                        "Patient  .  Male  .  34yrs",
                                        style: CustomTextStyles
                                            .bodyMediumGothamProBluegray30001,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        _buildDoctorNotesColumn(context),
                        SizedBox(height: 19.v),
                        _buildDoctorDiagnosesColumn(context),
                        SizedBox(height: 19.v),
                        _buildDoctorInstructionsColumn(context),
                        SizedBox(height: 19.v),
                        _buildDoctorPrescriptionColumn(context),
                        SizedBox(height: 19.v),
                        _buildReferralColumn(context),
                        SizedBox(height: 19.v),
                        _buildSymptomsColumn(context),
                        SizedBox(height: 24.v),
                        _buildPastMedicalHistoryColumn(context),
                        SizedBox(height: 24.v),
                        _buildPastSurgicalHistoryColumn(context),
                        SizedBox(height: 24.v),
                        _buildPastFamilyHistoryColumn(context),
                        SizedBox(height: 151.v),
                        _buildSaveButton(context),
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
  Widget _buildMedicalRecordsRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "Medical Records",
                style: CustomTextStyles.titleMediumAxiformaGray90007,
              ),
            ),
            CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseGray90007,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppointmentButton(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 79.h,
      text: "APT00457",
      margin: EdgeInsets.only(left: 58.h),
      buttonStyle: CustomButtonStyles.fillGrayTL131,
      buttonTextStyle: CustomTextStyles.bodySmallPoppinsDeeppurpleA400,
    );
  }

  /// Section Widget
  Widget _buildAmountChargedRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Amount charged",
            style: CustomTextStyles.bodyMediumGothamProPrimaryContainer,
          ),
          Text(
            "NGN3,000",
            style: CustomTextStyles.titleSmallGothamProPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMoreNotesButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      text: "Add More Notes",
      buttonStyle: CustomButtonStyles.outlineDeepPurpleATL8,
    );
  }

  /// Section Widget
  Widget _buildDoctorNotesColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 7.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillPinkF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Doctor’s Note",
              style: CustomTextStyles.titleMediumUrbanistGray90006,
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            width: 260.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 31.h,
            ),
            child: Text(
              "I’m having strong headache, stomach pain, high body temperature, cold, not eating well not sleeping well.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack90002.copyWith(
                height: 1.14,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          _buildAddMoreNotesButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMoreDiagnosesButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      text: "Add More Diagnoses",
      margin: EdgeInsets.only(left: 2.h),
      buttonStyle: CustomButtonStyles.outlineDeepPurpleATL8,
    );
  }

  /// Section Widget
  Widget _buildDoctorDiagnosesColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 7.h,
      ),
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.fillDeeppurpleA400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Doctor’s Diagnoses",
              style: CustomTextStyles.titleMediumUrbanistGray90006,
            ),
          ),
          SizedBox(height: 17.v),
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
                    style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
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
                    style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
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
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Cough",
                    style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          _buildAddMoreDiagnosesButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddMoreInstructionsButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      text: "Add More Instructions",
      buttonStyle: CustomButtonStyles.outlineDeepPurpleATL8,
    );
  }

  /// Section Widget
  Widget _buildDoctorInstructionsColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 7.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPinkF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Doctor’s Instruction",
              style: CustomTextStyles.titleMediumUrbanistGray90006,
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            width: 269.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 22.h,
            ),
            child: Text(
              "Get some rest, exercise well, eat well and take medications as instructed. ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack90002.copyWith(
                height: 1.14,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          _buildAddMoreInstructionsButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrescribeMoreButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      text: "Prescribe More",
      buttonStyle: CustomButtonStyles.outlineDeepPurpleATL8,
    );
  }

  /// Section Widget
  Widget _buildDoctorPrescriptionColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 7.h,
        right: 11.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillLightBlueAF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Doctor’s Prescription",
            style: CustomTextStyles.titleMediumUrbanistGray90006,
          ),
          SizedBox(height: 20.v),
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
                  style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
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
                  style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
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
                  style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
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
                  style: CustomTextStyles.bodyMediumUrbanistOnPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 23.v),
          _buildPrescribeMoreButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReferButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      text: "Refer",
      buttonStyle: CustomButtonStyles.outlineDeepPurpleATL81,
      buttonTextStyle: CustomTextStyles.bodyMediumGothamProOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildReferralColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 7.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPinkF.copyWith(
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
            style: CustomTextStyles.titleMediumUrbanistGray90006,
          ),
          SizedBox(height: 17.v),
          SizedBox(
            height: 69.v,
            width: 227.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 6.v,
                    width: 70.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 13.v,
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
                        imagePath: ImageConstant.imgImage69x60,
                        height: 69.v,
                        width: 60.h,
                        radius: BorderRadius.circular(
                          12.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 11.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Ahmed Smith",
                              style: CustomTextStyles
                                  .titleMediumGothamProGray90007,
                            ),
                            SizedBox(height: 13.v),
                            Text(
                              "Psychiatrist",
                              style:
                                  CustomTextStyles.bodyLargeGothamProGray90007,
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
          SizedBox(height: 12.v),
          _buildReferButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSymptomsColumn(BuildContext context) {
    return Container(
      width: 319.h,
      margin: EdgeInsets.only(
        left: 9.h,
        right: 13.h,
      ),
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
          Container(
            width: 85.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillDeeppurpleA2002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder13,
            ),
            child: Text(
              "Symptoms",
              style: CustomTextStyles.bodySmallPoppinsDeeppurpleA200,
            ),
          ),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(6, (index) => Frame24ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastMedicalHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 142.h,
      text: "Past medical history",
      buttonStyle: CustomButtonStyles.fillIndigoTL12,
      buttonTextStyle: CustomTextStyles.bodySmallPoppinsIndigo70001,
    );
  }

  /// Section Widget
  Widget _buildPastMedicalHistoryColumn(BuildContext context) {
    return Container(
      width: 319.h,
      margin: EdgeInsets.only(
        left: 9.h,
        right: 13.h,
      ),
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
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(6, (index) => Frame26ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastSurgicalHistoryColumn(BuildContext context) {
    return Container(
      width: 319.h,
      margin: EdgeInsets.only(
        left: 9.h,
        right: 13.h,
      ),
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
          Container(
            width: 141.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillRedC.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder13,
            ),
            child: Text(
              "Past surgical history",
              style: CustomTextStyles.bodySmallPoppinsPink40001,
            ),
          ),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(6, (index) => Frame28ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastFamilyHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 130.h,
      text: "Past family history",
      buttonStyle: CustomButtonStyles.fillIndigoTL13,
      buttonTextStyle: CustomTextStyles.bodySmallPoppinsIndigo300,
    );
  }

  /// Section Widget
  Widget _buildPastFamilyHistoryColumn(BuildContext context) {
    return Container(
      width: 319.h,
      margin: EdgeInsets.only(
        left: 9.h,
        right: 13.h,
      ),
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
          _buildPastFamilyHistoryButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(6, (index) => Frame30ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "Save",
      margin: EdgeInsets.only(
        left: 3.h,
        right: 11.h,
      ),
      buttonStyle: CustomButtonStyles.fillDeepPurpleATL8,
      buttonTextStyle: CustomTextStyles.titleMediumInter_1,
    );
  }
}
