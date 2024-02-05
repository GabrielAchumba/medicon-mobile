import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/presentation/appointments_history_page/appointments_history_page.dart';
import 'package:medicon/presentation/missed_appointments_page/missed_appointments_page.dart';
import 'package:medicon/presentation/ongoing_appointments_page/ongoing_appointments_page.dart';
import 'package:medicon/presentation/upcoming_appointments_page/upcoming_appointments_page.dart';
import 'package:medicon/widgets/app_bar/appbar_leading_image.dart';
import 'package:medicon/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MissedAppointmentsTabContainerPage extends StatefulWidget {
  const MissedAppointmentsTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  MissedAppointmentsTabContainerPageState createState() =>
      MissedAppointmentsTabContainerPageState();
}

class MissedAppointmentsTabContainerPageState
    extends State<MissedAppointmentsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 375.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Missed Appointments",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "View all appointments",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 37.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 470.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      UpcomingAppointmentsPage(),
                      MissedAppointmentsPage(),
                      OngoingAppointmentsPage(),
                      AppointmentsHistoryPage(),
                    ],
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: theme.colorScheme.onError,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Aeonik',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
        ),
        tabs: [
          Tab(
            child: Text(
              "Upcoming",
            ),
          ),
          Tab(
            child: Text(
              "Missed",
            ),
          ),
          Tab(
            child: Text(
              "Ongoing",
            ),
          ),
          Tab(
            child: Text(
              "History",
            ),
          ),
        ],
      ),
    );
  }
}
