import '../medical_app_two_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/presentation/missed_appointments_tab_container_page/missed_appointments_tab_container_page.dart';
import 'package:medicon/presentation/nav_bar_page/nav_bar_page.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:medicon/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:medicon/widgets/app_bar/appbar_title.dart';
import 'package:medicon/widgets/app_bar/appbar_trailing_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_bottom_bar.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';
import 'package:medicon/widgets/custom_outlined_button.dart';

class MedicalAppTwoScreen extends StatelessWidget {
  MedicalAppTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29.v),
              _buildYouHaveUpcoming(context),
              SizedBox(height: 33.v),
              _buildFrame(context),
              SizedBox(height: 16.v),
              _buildFrame1(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 97.h),
                child: Row(
                  children: [
                    CustomOutlinedButton(
                      height: 42.v,
                      width: 162.h,
                      text: "Send a message",
                      buttonStyle: CustomButtonStyles.outlineBlueGrayTL6,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumUrbanistBlack90002_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 76.h,
                        top: 10.v,
                        bottom: 11.v,
                      ),
                      child: Text(
                        "Cancel",
                        style: CustomTextStyles.titleMediumUrbanistRedA700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              _buildFrame2(context),
              SizedBox(height: 34.v),
              _buildUserProfile(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 96.v,
      leadingWidth: 83.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse3,
        margin: EdgeInsets.only(left: 22.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "Good Morning",
              margin: EdgeInsets.only(right: 34.h),
            ),
            SizedBox(height: 3.v),
            AppbarTitle(
              text: "Adah Jonathan",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup84,
          margin: EdgeInsets.fromLTRB(22.h, 12.v, 22.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYouHaveUpcoming(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "You have",
                style: CustomTextStyles.titleLargeUrbanistff000000_1,
              ),
              TextSpan(
                text: " ",
              ),
              TextSpan(
                text: "2 upcoming sessions",
                style: CustomTextStyles.titleLargeUrbanistff1896f2,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeftSecondarycontainer,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlack90001,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 16.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPexelsTimaMir,
            height: 159.v,
            width: 162.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Dr. Albert Johnson",
                      style:
                          CustomTextStyles.titleLargeUrbanistBlack90002SemiBold,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUnitedStatesOf,
                      height: 13.v,
                      width: 17.h,
                      margin: EdgeInsets.only(
                        left: 12.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.v),
                Row(
                  children: [
                    CustomIconButton(
                      height: 31.adaptSize,
                      width: 31.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillGreen,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFa6SolidCommentMedical,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "General Consultation",
                        style: CustomTextStyles.titleMediumUrbanistGray600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaterialSymbol,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "Tue, Apr 18",
                          style: CustomTextStyles.titleMediumUrbanistGray600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcRoundAccessTime,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "5:30 PM - 7:00 PM",
                          style: CustomTextStyles.titleMediumUrbanistGray600,
                        ),
                      ),
                    ],
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
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 33.h),
      child: Row(
        children: [
          CustomElevatedButton(
            height: 42.v,
            width: 162.h,
            text: "Join Appointment",
            buttonStyle: CustomButtonStyles.fillBlue,
            buttonTextStyle: CustomTextStyles.titleMediumUrbanist,
          ),
          CustomOutlinedButton(
            height: 42.v,
            width: 177.h,
            text: "Reschedule the call",
            margin: EdgeInsets.only(left: 12.h),
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL6,
            buttonTextStyle: CustomTextStyles.titleMediumUrbanistBlack90002_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctors to meet",
          style: CustomTextStyles.titleLargeUrbanistBlack90002SemiBold,
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeftSecondarycontainer,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlack90001,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 16.h,
            bottom: 2.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 248.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 14.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Griddeeppurplea20001:
        return AppRoutes.navBarPage;
      case BottomBarEnum.Televisiononerror:
        return AppRoutes.missedAppointmentsTabContainerPage;
      case BottomBarEnum.Globeonerror:
        return "/";
      case BottomBarEnum.Searchonerror:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.navBarPage:
        return NavBarPage();
      case AppRoutes.missedAppointmentsTabContainerPage:
        return MissedAppointmentsTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
