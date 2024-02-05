import '../doctors_dashboard_screen/widgets/userprofile6_item_widget.dart';
import '../doctors_dashboard_screen/widgets/userprofile7_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/presentation/missed_appointments_tab_container_page/missed_appointments_tab_container_page.dart';import 'package:medicon/presentation/nav_bar_page/nav_bar_page.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_circleimage_one.dart';
import 'package:medicon/widgets/app_bar/appbar_subtitle.dart';
import 'package:medicon/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:medicon/widgets/app_bar/appbar_trailing_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';
import 'package:medicon/widgets/custom_bottom_bar.dart';
import 'package:medicon/widgets/custom_switch.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class DoctorsDashboardScreen extends StatelessWidget {DoctorsDashboardScreen({Key? key}) : super(key: key);

int sliderIndex = 1;

bool isSelectedSwitch = false;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: 375.h, padding: EdgeInsets.symmetric(vertical: 32.v), child: Column(children: [SizedBox(height: 41.v), _buildScrollView(context)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 61.h, leading: AppbarLeadingCircleimageOne(imagePath: ImageConstant.imgPexelsThirdman532765645x45, margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 7.v), onTap: () {onTapCircleImage(context);}), title: Padding(padding: EdgeInsets.only(left: 14.h), child: Column(children: [AppbarSubtitleThree(text: "Good Morning", margin: EdgeInsets.only(right: 57.h)), SizedBox(height: 3.v), AppbarSubtitle(text: "Dr. Adah Jonathan")])), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgGroup84BlueGray400, margin: EdgeInsets.fromLTRB(21.h, 12.v, 21.h, 15.v))]); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return Expanded(child: SingleChildScrollView(child: Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: RichText(text: TextSpan(children: [TextSpan(text: "You have", style: CustomTextStyles.bodyLargeff82808f18), TextSpan(text: " "), TextSpan(text: "3 pending appointment", style: CustomTextStyles.titleMediumff5fd148)]), textAlign: TextAlign.left)), CustomImageView(imagePath: ImageConstant.imgGuidanceRightArrow, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.only(left: 59.h, bottom: 2.v))]), SizedBox(height: 17.v), CarouselSlider.builder(options: CarouselOptions(height: 180.v, initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {sliderIndex = index;}), itemCount: 1, itemBuilder: (context, index, realIndex) {return Userprofile6ItemWidget();}), SizedBox(height: 24.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: sliderIndex, count: 1, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 12.9, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blueGray10002, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 51.v), Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 19.v), decoration: AppDecoration.fillGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder13), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("I am Available ", style: CustomTextStyles.bodyLargeGray700)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})])), SizedBox(height: 14.v), Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v), decoration: AppDecoration.fillGray5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder13), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCalendar, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 10.h, top: 4.v), child: Text("Schedule appointment", style: CustomTextStyles.bodyLargeGray700_1)), Spacer(), CustomImageView(imagePath: ImageConstant.imgGuidanceRightArrow, height: 24.adaptSize, width: 24.adaptSize)])), SizedBox(height: 54.v), Align(alignment: Alignment.centerLeft, child: Text("Recent Consultations", style: CustomTextStyles.titleMediumGray90002)), SizedBox(height: 19.v), ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 17.v);}, itemCount: 3, itemBuilder: (context, index) {return Userprofile7ItemWidget();})])))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Griddeeppurplea20001: return AppRoutes.navBarPage; case BottomBarEnum.Televisiononerror: return AppRoutes.missedAppointmentsTabContainerPage; case BottomBarEnum.Globeonerror: return "/"; case BottomBarEnum.Searchonerror: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.navBarPage: return NavBarPage(); case AppRoutes.missedAppointmentsTabContainerPage: return MissedAppointmentsTabContainerPage(); default: return DefaultWidget();} } 
/// Navigates to the loginOneScreen when the action is triggered.
onTapCircleImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginOneScreen); } 
 }
