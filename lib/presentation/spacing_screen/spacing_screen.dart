import '../spacing_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class SpacingScreen extends StatelessWidget {
  const SpacingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 727.h,
          child: Column(
            children: [
              SizedBox(height: 48.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 144.v),
                    padding: EdgeInsets.symmetric(horizontal: 48.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFrameTwo(context),
                        SizedBox(height: 64.v),
                        _buildUserProfile(context),
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
  Widget _buildFrameTwo(BuildContext context) {
    return Container(
      width: 591.h,
      margin: EdgeInsets.only(right: 40.h),
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Text(
            "Spacing",
            style: CustomTextStyles.displayMediumInter,
          ),
          SizedBox(height: 3.v),
          Container(
            width: 574.h,
            margin: EdgeInsets.only(right: 16.h),
            child: Text(
              "A comprehensive spacing system with proposional to a 4px scale which properly aligns to the layout and elements look harmonous.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray60002,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 17,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }
}
