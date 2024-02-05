import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';
import 'package:medicon/core/utils/colors.dart';
import 'package:medicon/widgets/text_widgets.dart';

import 'buttons.dart';

class AppEmptyWidget extends StatelessWidget {
  const AppEmptyWidget(this.title, this.desc, {super.key, this.onTap});

  final String title, desc;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/empty.png',
            height: 150.h,
          ),
          SizedBox(height: 6.h),
          regularText(
            title,
            fontSize: 20.h,
            textAlign: TextAlign.center,
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 6.h),
          regularText(
            desc,
            fontSize: 15.h,
            textAlign: TextAlign.center,
            color: AppColors.textBlack,
          ),
          SizedBox(height: 16.h),
          if (onTap != null)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100.h),
              child: SafeArea(
                child: buttonWithBorder(
                  'Make a Request',
                  buttonColor: AppColors.orange,
                  fontSize: 15.h,
                  height: 56.h,
                  textColor: AppColors.white,
                  fontWeight: FontWeight.w600,
                  onTap: onTap,
                ),
              ),
            ),
        ],
      ),
    );
  }
}