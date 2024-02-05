import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/widgets/custom_elevated_button.dart';
import 'package:medicon/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class DateOfBirthScreen extends StatelessWidget {DateOfBirthScreen({Key? key}) : super(key: key);

List<DateTime?> selectedDatesFromCalendar1 = [];

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray5003, body: Container(width: 343.h, padding: EdgeInsets.all(18.h), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildHeaderRow(context), SizedBox(height: 15.v), _buildCalendar(context)])))); } 
/// Section Widget
Widget _buildHeaderRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineOnErrorContainer, onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftBlack90002)), Spacer(), CustomElevatedButton(height: 35.v, width: 74.h, text: "April", buttonStyle: CustomButtonStyles.outlineOnErrorContainer, buttonTextStyle: CustomTextStyles.headlineSmallLexendGray900), CustomElevatedButton(height: 35.v, width: 72.h, text: "2021", margin: EdgeInsets.only(left: 1.h), buttonStyle: CustomButtonStyles.outlineOnErrorContainer, buttonTextStyle: CustomTextStyles.headlineSmallLexendGray900)])), Padding(padding: EdgeInsets.only(left: 42.h), child: CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineOnErrorContainer, child: CustomImageView(imagePath: ImageConstant.imgMaximize)))]); } 
/// Section Widget
Widget _buildCalendar(BuildContext context) { return SizedBox(height: 229.v, width: 301.h, child: CalendarDatePicker2(config: CalendarDatePicker2Config(calendarType: CalendarDatePicker2Type.multi, firstDate: DateTime(DateTime.now().year - 5), lastDate: DateTime(DateTime.now().year + 5), selectedDayHighlightColor: Color(0XFFFFFFFF), firstDayOfWeek: 1, weekdayLabelTextStyle: TextStyle(color: theme.colorScheme.onSecondaryContainer, fontFamily: 'Lexend', fontWeight: FontWeight.w500), selectedDayTextStyle: TextStyle(color: Color(0XFF1E1E1E), fontFamily: 'Lexend', fontWeight: FontWeight.w500), dayTextStyle: TextStyle(color: appTheme.indigo90026, fontFamily: 'Lexend', fontWeight: FontWeight.w500), disabledDayTextStyle: TextStyle(color: appTheme.indigo90026, fontFamily: 'Lexend', fontWeight: FontWeight.w500), weekdayLabels: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"], dayBorderRadius: BorderRadius.circular(4.83.h)), value: selectedDatesFromCalendar1, onValueChanged: (dates) {})); } 

/// Navigates back to the previous screen.
onTapBtnArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
