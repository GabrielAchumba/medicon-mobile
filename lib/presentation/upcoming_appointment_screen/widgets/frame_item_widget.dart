import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.all(10.h),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Ulcer",
          style: TextStyle(
            color: appTheme.deepPurpleA200,
            fontSize: 14.fSize,
            fontFamily: 'Aeonik',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.deepPurpleA200.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.deepPurpleA200,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
