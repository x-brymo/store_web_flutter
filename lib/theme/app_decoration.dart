import 'package:flutter/material.dart';
//import 'package:web_app_flutter_real_estate/core/app_export.dart';
import 'package:store_web_flutter/core/app_export.dart';
import 'package:store_web_flutter/core/utils/size_utils.dart';
import 'package:store_web_flutter/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple900,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA400,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientLightBlueCToIndigoA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightBlue3004c,
            appTheme.indigoA400.withOpacity(0.3),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlackF => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineDeepPurple => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.deepPurple900,
          width: 1.h,
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              10,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder46 => BorderRadius.circular(
        46.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL800 => BorderRadius.vertical(
        bottom: Radius.circular(800.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL80 => BorderRadius.only(
        topLeft: Radius.circular(80.h),
        topRight: Radius.circular(20.h),
        bottomLeft: Radius.circular(20.h),
        bottomRight: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
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
