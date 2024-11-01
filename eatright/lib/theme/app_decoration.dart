import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900.withOpacity(0.2),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  // Neutral decorations
  static BoxDecoration get neutralWhite => BoxDecoration(
        color: appTheme.whiteA700,
      );
  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.29),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray100,
        border: Border(
          top: BorderSide(
            color: appTheme.gray700.withOpacity(0.5),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray30019 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30019,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300191 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border(
          top: BorderSide(
            color: appTheme.gray30019,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.gray30019,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.blueGray90002,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.05),
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700,
            width: 1.h,
          ),
          left: BorderSide(
            color: appTheme.whiteA700,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700,
            width: 1.h,
          ),
          left: BorderSide(
            color: appTheme.whiteA700,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA7002 => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 2.h,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineWhiteA7003 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.2),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
}
