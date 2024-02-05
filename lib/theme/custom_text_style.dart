import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAmber700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.amber700,
      );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeBluegray90017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 17.fSize,
      );
  static get bodyLargeBluegray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray90019 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 19.fSize,
      );
  static get bodyLargeDeeppurpleA200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get bodyLargeDeeppurpleA20001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepPurpleA20001,
      );
  static get bodyLargeGothamPro =>
      theme.textTheme.bodyLarge!.gothamPro.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeGothamProGray90007 =>
      theme.textTheme.bodyLarge!.gothamPro.copyWith(
        color: appTheme.gray90007.withOpacity(0.5),
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeGray90007 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90007.withOpacity(0.5),
      );
  static get bodyLargeGray90009 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90009,
        fontSize: 17.fSize,
      );
  static get bodyLargeGreenA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodyLargeIndigo300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo300,
      );
  static get bodyLargeIndigo700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo700,
      );
  static get bodyLargeInterDeeppurpleA200 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get bodyLargeInterIndigo300 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.indigo300,
      );
  static get bodyLargeInterIndigo700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.indigo700,
      );
  static get bodyLargeInterPink40001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.pink40001,
      );
  static get bodyLargeManropeBluegray10007 =>
      theme.textTheme.bodyLarge!.manrope.copyWith(
        color: appTheme.blueGray10007,
      );
  static get bodyLargeManropeGray90002 =>
      theme.textTheme.bodyLarge!.manrope.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeOnError17 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 17.fSize,
      );
  static get bodyLargePink40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.pink40001,
      );
  static get bodyLargeRed500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red500,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLargeff161518 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF161518),
      );
  static get bodyLargeff5fd148 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF5FD148),
        fontSize: 18.fSize,
      );
  static get bodyLargeff82808f => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF82808F),
        fontSize: 18.fSize,
      );
  static get bodyLargeff82808f18 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF82808F),
        fontSize: 18.fSize,
      );
  static get bodyLargeff82808f_1 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF82808F),
      );
  static get bodyMediumAeonikAmber700 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.amber700,
      );
  static get bodyMediumAeonikBluegray400 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumAeonikBluegray40015 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumAeonikBluegray40015_1 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumAeonikBluegray900 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.blueGray900,
        fontSize: 15.fSize,
      );
  static get bodyMediumAeonikBluegray900_1 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumAeonikDeeppurpleA200 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get bodyMediumAeonikErrorContainer =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumAeonikErrorContainer_1 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumAeonikGray10002 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.gray10002,
      );
  static get bodyMediumAeonikGray60001 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.gray60001,
        fontSize: 15.fSize,
      );
  static get bodyMediumAeonikGray700 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumAeonikGray700_1 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumAeonikGray90007 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.gray90007,
        fontSize: 15.fSize,
      );
  static get bodyMediumAeonikGreenA700 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.greenA700,
      );
  static get bodyMediumAeonikOnError =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumAeonikOnPrimary =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumAeonikOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumAeonikPink40001 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.pink40001,
      );
  static get bodyMediumAeonikPrimary =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumAeonikRedA700 =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: appTheme.redA700,
      );
  static get bodyMediumAeonikff82808f =>
      theme.textTheme.bodyMedium!.aeonik.copyWith(
        color: Color(0XFF82808F),
      );
  static get bodyMediumBluegray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumGothamProAmber700 =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: appTheme.amber700,
      );
  static get bodyMediumGothamProBluegray30001 =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyMediumGothamProBluegray800 =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumGothamProDeeppurpleA400 =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: appTheme.deepPurpleA400,
      );
  static get bodyMediumGothamProGray700 =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGothamProOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumGothamProPrimary =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumGothamProPrimaryContainer =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumGothamProff5fd148 =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: Color(0XFF5FD148),
      );
  static get bodyMediumGothamProff82808f =>
      theme.textTheme.bodyMedium!.gothamPro.copyWith(
        color: Color(0XFF82808F),
      );
  static get bodyMediumGray10002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray10002,
      );
  static get bodyMediumGray20002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray20002,
      );
  static get bodyMediumGray30002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray30002,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
        fontSize: 13.fSize,
      );
  static get bodyMediumManropeErrorContainer =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppinsIndigo300 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.indigo300,
        fontSize: 13.fSize,
      );
  static get bodyMediumUrbanistOnPrimary =>
      theme.textTheme.bodyMedium!.urbanist.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallAeonik => theme.textTheme.bodySmall!.aeonik.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikAmber700 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.amber700,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikBlack90002 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.black90002,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikDeeppurpleA200 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikDeeppurpleA20001 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.deepPurpleA20001,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikGray400 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.gray400,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikGray90007 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.gray90007,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikGreenA700 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.greenA700,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikIndigo70001 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.indigo70001,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikOnPrimaryContainer =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikPink40001 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.pink40001,
        fontSize: 12.fSize,
      );
  static get bodySmallAeonikRed500 =>
      theme.textTheme.bodySmall!.aeonik.copyWith(
        color: appTheme.red500,
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallInterDeeppurpleA20001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.deepPurpleA20001,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray50 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray90009 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray90009,
        fontSize: 12.fSize,
      );
  static get bodySmallInterIndigo5001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.indigo5001,
        fontSize: 12.fSize,
      );
  static get bodySmallManropeErrorContainer =>
      theme.textTheme.bodySmall!.manrope.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallManropePink400 =>
      theme.textTheme.bodySmall!.manrope.copyWith(
        color: appTheme.pink400,
        fontSize: 12.fSize,
      );
  static get bodySmallPlusJakartaDisplayBlueA200 =>
      theme.textTheme.bodySmall!.plusJakartaDisplay.copyWith(
        color: appTheme.blueA200,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsDeeppurpleA200 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsDeeppurpleA400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepPurpleA400,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsIndigo300 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo300,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsIndigo70001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo70001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsPink40001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.pink40001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  // Display text style
  static get displayMediumGray90004 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray90004,
      );
  static get displayMediumInter => theme.textTheme.displayMedium!.inter;
  static get displayMediumOnPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Headline text style
  static get headlineLargeGray90007 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90007,
      );
  static get headlineLargePlusJakartaDisplayGray90007 =>
      theme.textTheme.headlineLarge!.plusJakartaDisplay.copyWith(
        color: appTheme.gray90007,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallAeonikBlack900 =>
      theme.textTheme.headlineSmall!.aeonik.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray90002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineSmallGray90002Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallLexendGray900 =>
      theme.textTheme.headlineSmall!.lexend.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterDeeppurple50 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.deepPurple50,
      );
  static get labelLargeInterDeeppurple900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.deepPurple900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterPurple800 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.purple800,
      );
  static get labelLargePlusJakartaDisplay =>
      theme.textTheme.labelLarge!.plusJakartaDisplay.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePlusJakartaDisplayGray90007 =>
      theme.textTheme.labelLarge!.plusJakartaDisplay.copyWith(
        color: appTheme.gray90007,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeUrbanistBlack90002 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeUrbanistBlack90002SemiBold =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeUrbanistBlack90002SemiBold22 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: appTheme.black90002,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeUrbanistff000000 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeUrbanistff000000_1 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: Color(0XFF000000),
      );
  static get titleLargeUrbanistff1896f2 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        color: Color(0XFF1896F2),
        fontWeight: FontWeight.w700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumAxiformaGray90007 =>
      theme.textTheme.titleMedium!.axiforma.copyWith(
        color: appTheme.gray90007,
        fontSize: 18.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGothamProGray90005 =>
      theme.textTheme.titleMedium!.gothamPro.copyWith(
        color: appTheme.gray90005,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGothamProGray90007 =>
      theme.textTheme.titleMedium!.gothamPro.copyWith(
        color: appTheme.gray90007,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGothamProPrimary =>
      theme.textTheme.titleMedium!.gothamPro.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleMediumGray90005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90007 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90007,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90009 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90009,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray90009 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90009,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInter_1 => theme.textTheme.titleMedium!.inter;
  static get titleMediumLexendOnSecondaryContainer =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumManropeGray90002 =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNohemiGray90006 =>
      theme.textTheme.titleMedium!.nohemi.copyWith(
        color: appTheme.gray90006,
      );
  static get titleMediumNohemiGray90006_1 =>
      theme.textTheme.titleMedium!.nohemi.copyWith(
        color: appTheme.gray90006,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumPlusJakartaDisplayGray90007 =>
      theme.textTheme.titleMedium!.plusJakartaDisplay.copyWith(
        color: appTheme.gray90007,
        fontSize: 18.fSize,
      );
  static get titleMediumPlusJakartaDisplayGray90007Bold =>
      theme.textTheme.titleMedium!.plusJakartaDisplay.copyWith(
        color: appTheme.gray90007,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumUrbanist =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanistBlack90002 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.black90002,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanistBlack90002_1 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumUrbanistGray50001 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray50001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanistGray600 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumUrbanistGray700 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumUrbanistGray90006 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray90006,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumUrbanistRedA700 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.redA700,
      );
  static get titleMediumff565560 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF565560),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff5fd148 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF5FD148),
        fontSize: 18.fSize,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeppurpleA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA700,
        fontSize: 14.fSize,
      );
  static get titleSmallGothamProPrimaryContainer =>
      theme.textTheme.titleSmall!.gothamPro.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray90009 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90009,
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: 14.fSize,
      );
  static get titleSmallInterGray10005 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray10005,
        fontSize: 14.fSize,
      );
  static get titleSmallInterGray90009 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90009,
        fontSize: 14.fSize,
      );
  static get titleSmallLexendIndigo90026 =>
      theme.textTheme.titleSmall!.lexend.copyWith(
        color: appTheme.indigo90026,
        fontSize: 14.fSize,
      );
  static get titleSmallManrope => theme.textTheme.titleSmall!.manrope.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallManropeGray90002 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
      );
  static get titleSmallNohemiGray90007 =>
      theme.textTheme.titleSmall!.nohemi.copyWith(
        color: appTheme.gray90007,
        fontSize: 14.fSize,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimary14 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallRedA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA400,
        fontSize: 14.fSize,
      );
  static get titleSmallUrbanistBlack90002 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.black90002,
      );
  static get titleSmallUrbanistGray600 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallUrbanistff000000 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: Color(0XFF000000),
      );
  static get titleSmallUrbanistff7a7a7a =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: Color(0XFF7A7A7A),
      );
  static get titleSmallff161518 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF161518),
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get aeonik {
    return copyWith(
      fontFamily: 'Aeonik',
    );
  }

  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }

  TextStyle get gothamPro {
    return copyWith(
      fontFamily: 'Gotham Pro',
    );
  }

  TextStyle get nohemi {
    return copyWith(
      fontFamily: 'Nohemi',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get plusJakartaDisplay {
    return copyWith(
      fontFamily: 'Plus Jakarta Display',
    );
  }

  TextStyle get axiforma {
    return copyWith(
      fontFamily: 'Axiforma',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
