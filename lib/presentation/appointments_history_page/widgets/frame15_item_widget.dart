import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

// ignore: must_be_immutable
class Frame15ItemWidget extends StatelessWidget {
  const Frame15ItemWidget({Key? key})
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
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Fever",
          style: TextStyle(
            color: appTheme.gray700,
            fontSize: 11.fSize,
            fontFamily: 'Gotham Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.gray700.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
