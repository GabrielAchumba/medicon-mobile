import 'package:flutter/material.dart';
import 'package:medicon/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber700.withOpacity(0.07),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple900,
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA20001,
      );
  static BoxDecoration get fillDeeppurpleA200 => BoxDecoration(
        color: appTheme.deepPurpleA200.withOpacity(0.1),
      );
  static BoxDecoration get fillDeeppurpleA2001 => BoxDecoration(
        color: appTheme.deepPurpleA200.withOpacity(0.03),
      );
  static BoxDecoration get fillDeeppurpleA2002 => BoxDecoration(
        color: appTheme.deepPurpleA200.withOpacity(0.2),
      );
  static BoxDecoration get fillDeeppurpleA400 => BoxDecoration(
        color: appTheme.deepPurpleA400.withOpacity(0.06),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: appTheme.gray10003,
      );
  static BoxDecoration get fillGray10004 => BoxDecoration(
        color: appTheme.gray10004,
      );
  static BoxDecoration get fillGray10005 => BoxDecoration(
        color: appTheme.gray10005,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray5003 => BoxDecoration(
        color: appTheme.gray5003,
      );
  static BoxDecoration get fillGray90008 => BoxDecoration(
        color: appTheme.gray90008,
      );
  static BoxDecoration get fillGray90009 => BoxDecoration(
        color: appTheme.gray90009,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700.withOpacity(0.07),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo300.withOpacity(0.03),
      );
  static BoxDecoration get fillIndigo300 => BoxDecoration(
        color: appTheme.indigo300.withOpacity(0.09),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue10007,
      );
  static BoxDecoration get fillLightBlueAF => BoxDecoration(
        color: appTheme.lightBlueA4000f,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange10007,
      );
  static BoxDecoration get fillPinkF => BoxDecoration(
        color: appTheme.pink5000f,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
      );
  static BoxDecoration get fillRedC => BoxDecoration(
        color: appTheme.red2004c,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow50,
      );

  // Lemon decorations
  static BoxDecoration get lemon => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.gray5003,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray10006,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray10001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray10001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray10033 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray10033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration();
  static BoxDecoration get outlineDeeppurpleA20001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.deepPurpleA20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeppurpleA200011 => BoxDecoration(
        color: appTheme.deepPurple900,
        border: Border.all(
          color: appTheme.deepPurpleA20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeppurpleA200012 => BoxDecoration(
        color: appTheme.gray90001,
        border: Border.all(
          color: appTheme.deepPurpleA20001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineDeeppurpleA40001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.deepPurpleA40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeppurpleA400011 => BoxDecoration(
        color: appTheme.gray90001,
        border: Border.all(
          color: appTheme.deepPurpleA40001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray700,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: appTheme.gray5003,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray10002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray100021 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray100022 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12.87,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray100023 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray10002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray30002 => BoxDecoration(
        color: appTheme.gray50,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray30002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray90002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90002.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10.03,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray90014 => BoxDecoration(
        color: appTheme.greenA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2.76,
              5.52,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.indigo100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineIndigo5001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.indigo5001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineIndigo5002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.indigo5002,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        border: Border.all(
          color: appTheme.lightGreen300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder75 => BorderRadius.circular(
        75.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL16 => BorderRadius.vertical(
        top: Radius.circular(16.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    