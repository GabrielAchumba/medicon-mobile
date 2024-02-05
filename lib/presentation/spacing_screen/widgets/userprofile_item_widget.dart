import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineBluegray10001,
      child: Row(
        children: [
          Text(
            "Name",
            style: CustomTextStyles.bodyMediumBluegray10001,
          ),
          Spacer(
            flex: 9,
          ),
          Text(
            "Token",
            style: CustomTextStyles.bodyMediumBluegray10001,
          ),
          Spacer(
            flex: 28,
          ),
          Text(
            "Size",
            style: CustomTextStyles.bodyMediumBluegray10001,
          ),
          Spacer(
            flex: 61,
          ),
        ],
      ),
    );
  }
}
