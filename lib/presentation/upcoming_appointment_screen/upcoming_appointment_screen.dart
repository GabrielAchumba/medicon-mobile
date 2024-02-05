import '../upcoming_appointment_screen/widgets/frame2_item_widget.dart';
import '../upcoming_appointment_screen/widgets/frame4_item_widget.dart';
import '../upcoming_appointment_screen/widgets/frame6_item_widget.dart';
import '../upcoming_appointment_screen/widgets/frame_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';

class UpcomingAppointmentScreen extends StatelessWidget {
  const UpcomingAppointmentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming Appointment",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "View all upcoming appointments",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 38.v),
                  _buildAppointmentDetails(context),
                  SizedBox(height: 27.v),
                  _buildConsultationFee(context),
                  SizedBox(height: 27.v),
                  _buildVideoTile(context),
                  SizedBox(height: 29.v),
                  _buildFrame(context),
                  SizedBox(height: 14.v),
                  _buildSymptomsSection(context),
                  SizedBox(height: 14.v),
                  _buildFrame1(context),
                  SizedBox(height: 14.v),
                  _buildFrame2(context),
                  SizedBox(height: 14.v),
                  _buildFrame3(context),
                  SizedBox(height: 54.v),
                  _buildStartConsultationButton(context),
                  SizedBox(height: 16.v),
                  _buildRescheduleConsultationButton(context),
                ],
              ),
            ),
          ),
        ),
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
  Widget _buildAptButton(BuildContext context) {
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
  Widget _buildAppointmentDetails(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray10002.copyWith(
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
                        style: CustomTextStyles.bodyMediumAeonikBluegray400,
                      ),
                    ],
                  ),
                ),
                _buildAptButton(context),
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
                SizedBox(
                  width: 76.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendarDateRange,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "0:01:20",
                          style: CustomTextStyles.bodyMediumAeonikBluegray40015,
                        ),
                      ),
                    ],
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
  Widget _buildVideoTile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 28.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgVideocam,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
            ),
            child: Column(
              children: [
                Text(
                  "Test your device prior to visit",
                  style: CustomTextStyles.bodyLargeGray90009,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 222.h,
                  child: Text(
                    "Make sure video, audio and internet connections are working.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.bodyMediumAeonikBluegray400.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 23.v,
              bottom: 23.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComplainButton(BuildContext context) {
    return CustomElevatedButton(
      height: 27.v,
      width: 71.h,
      text: "Complain",
      buttonStyle: CustomButtonStyles.fillGrayTL13,
      buttonTextStyle: CustomTextStyles.bodySmallAeonik,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildComplainButton(context),
          SizedBox(height: 16.v),
          Container(
            width: 272.h,
            margin: EdgeInsets.only(right: 40.h),
            child: Text(
              "I’m having strong headache, stomach pain, high body temperature, cold, not eating well not sleeping well.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumAeonikGray700_1.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSymptomsSection(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray10005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
            height: 30.v,
            width: 78.h,
            text: "Symptoms",
            buttonStyle: CustomButtonStyles.fillIndigo,
            buttonTextStyle: CustomTextStyles.bodySmallAeonikDeeppurpleA20001,
          ),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 14.v,
            spacing: 14.h,
            children: List<Widget>.generate(6, (index) => FrameItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastMedicalHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 128.h,
      text: "Past medical history",
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikAmber700,
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPastMedicalHistoryButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 14.v,
            spacing: 14.h,
            children: List<Widget>.generate(6, (index) => Frame2ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastSurgicalHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 127.h,
      text: "Past surgical history",
      buttonStyle: CustomButtonStyles.fillDeepOrange,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikRed500,
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPastSurgicalHistoryButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 14.v,
            spacing: 14.h,
            children: List<Widget>.generate(6, (index) => Frame4ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastFamilyHistoryButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 117.h,
      text: "Past family history",
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.bodySmallAeonikGreenA700,
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray10003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPastFamilyHistoryButton(context),
          SizedBox(height: 24.v),
          Wrap(
            runSpacing: 14.v,
            spacing: 14.h,
            children: List<Widget>.generate(6, (index) => Frame6ItemWidget()),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStartConsultationButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Start Consultation",
      buttonStyle: CustomButtonStyles.fillGrayTL13,
      buttonTextStyle: CustomTextStyles.titleSmallGray700_1,
    );
  }

  /// Section Widget
  Widget _buildRescheduleConsultationButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Reschedule Consultation",
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
    );
  }
}
