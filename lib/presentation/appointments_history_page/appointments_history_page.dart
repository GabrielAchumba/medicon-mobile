import '../appointments_history_page/widgets/userprofile5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_text_form_field.dart';

class AppointmentsHistoryPage extends StatefulWidget {const AppointmentsHistoryPage({Key? key}) : super(key: key);

@override AppointmentsHistoryPageState createState() =>  AppointmentsHistoryPageState();

 }

// ignore_for_file: must_be_immutable
class AppointmentsHistoryPageState extends State<AppointmentsHistoryPage> with  AutomaticKeepAliveClientMixin<AppointmentsHistoryPage> {TextEditingController monthEditTextController = TextEditingController();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: _buildScrollView(context))); } 
/// Section Widget
Widget _buildMonthEditText(BuildContext context) { return CustomTextFormField(controller: monthEditTextController, hintText: "20-29 August 2023", hintStyle: CustomTextStyles.bodyMediumAeonikBluegray400, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgCalendarDateRangeOnerror, height: 22.adaptSize, width: 22.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL8); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Column(children: [SizedBox(height: 35.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildMonthEditText(context), SizedBox(height: 39.v), Text("All Appointments", style: CustomTextStyles.titleMediumGray90002), SizedBox(height: 18.v), ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 17.v);}, itemCount: 3, itemBuilder: (context, index) {return Userprofile5ItemWidget(onTapUserProfile: () {onTapUserProfile(context);});})]))])); } 
/// Navigates to the upcomingAppointmentScreen when the action is triggered.
onTapUserProfile(BuildContext context) { Navigator.pushNamed(context, AppRoutes.upcomingAppointmentScreen); } 
 }
