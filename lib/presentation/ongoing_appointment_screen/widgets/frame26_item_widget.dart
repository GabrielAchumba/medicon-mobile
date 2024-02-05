import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class Frame26ItemWidget extends StatelessWidget {
  const Frame26ItemWidget({Key? key})
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
            color: appTheme.indigo700,
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.indigo700.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.indigo700,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
