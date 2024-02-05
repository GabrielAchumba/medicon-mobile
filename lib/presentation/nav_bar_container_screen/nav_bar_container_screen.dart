import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/presentation/missed_appointments_tab_container_page/missed_appointments_tab_container_page.dart';
import 'package:medicon/presentation/nav_bar_page/nav_bar_page.dart';
import 'package:medicon/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class NavBarContainerScreen extends StatelessWidget {NavBarContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, body: Navigator(key: navigatorKey, initialRoute: AppRoutes.navBarPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: Padding(padding: EdgeInsets.only(left: 64.h, right: 169.h), child: _buildBottomBar(context)))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Griddeeppurplea20001: return AppRoutes.navBarPage; case BottomBarEnum.Televisiononerror: return AppRoutes.missedAppointmentsTabContainerPage; case BottomBarEnum.Globeonerror: return "/"; case BottomBarEnum.Searchonerror: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.navBarPage: return NavBarPage(); case AppRoutes.missedAppointmentsTabContainerPage: return MissedAppointmentsTabContainerPage(); default: return DefaultWidget();} } 
 }
