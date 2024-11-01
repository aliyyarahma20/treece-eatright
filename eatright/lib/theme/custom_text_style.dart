import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sen {
    return copyWith(
      fontFamily: 'Sen',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  static var headlineSmallNunitoSecondaryContainer;

  static var titleMediumPrimaryContainer;

  static var titleMediumGray90001;

  // text style
  static TextStyle get WhiteA700 => TextStyle(
        color: appTheme.whiteA700,
      );
// body text style
  static TextStyle get bodyLargeSenBluegray90001 =>
      theme.textTheme.bodyLarge!.sen.copyWith(
        color: appTheme.blueGray90001,
      );
  static TextStyle get bodyLargeSenDeepOrangeA700 =>
      theme.textTheme.bodyLarge!.sen.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get bodyMediumAbel => theme.textTheme.bodyMedium!.abel;
  static get bodyMediumAbel_1 => theme.textTheme.bodyMedium!.abel;
  static TextStyle get bodyMediumBluegray900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get bodyMediumPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get bodyMediumPrimary_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get bodyMediumSenBluegray300 =>
      theme.textTheme.bodyMedium!.sen.copyWith(
        color: appTheme.blueGray300,
      );
  static TextStyle get bodyMediumSenGray700 =>
      theme.textTheme.bodyMedium!.sen.copyWith(
        color: appTheme.gray700,
      );
  static TextStyle get bodySmallRubikOnPrimary =>
      theme.textTheme.bodySmall!.rubik.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get bodySmallSenBluegray90001 =>
      theme.textTheme.bodySmall!.sen.copyWith(
        color: appTheme.blueGray90001,
      );
  // Headline text style
  static TextStyle get headlineSmallNunito =>
      theme.textTheme.headlineSmall!.nunito.copyWith(
        fontWeight: FontWeight.w800,
      );
  static TextStyle get headlineSmallNunitoBluegray900 =>
      theme.textTheme.headlineSmall!.nunito.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get headlineSmallNunitoBluegray900ExtraBold =>
      theme.textTheme.headlineSmall!.nunito.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get headlineSmallNunitoDeepOrangeA700 =>
      theme.textTheme.headlineSmall!.nunito.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static TextStyle get headlineSmallRubik =>
      theme.textTheme.headlineSmall!.rubik.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get headlineSmallRubikBluegray900 =>
      theme.textTheme.headlineSmall!.rubik.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static TextStyle get labelLargeBluegray90001 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelLargeRubikBluegray700 =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeRubikBluegray900 =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeRubikWhiteA700 =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelMediumBlack90001 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static TextStyle get labelSmall => theme.textTheme.labelSmall!.copyWith(
        fontSize: 8.fSize,
      );
  static TextStyle get labelSmallBlack90001 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.9),
      );
  // Nunito text style
  static TextStyle get nunitoBlack90001 => TextStyle(
        color: appTheme.black90001,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).nunito;
  static TextStyle get nunitoBlack90001Bold => TextStyle(
        color: appTheme.black90001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).nunito;
  // Title text style
  static TextStyle get titleLargeBluegray90001 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static TextStyle get titleLargeIndigo300 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo300,
        fontSize: 22.fSize,
      );
  static TextStyle get titleLargeSen => theme.textTheme.titleLarge!.sen;
  static TextStyle get titleLargeSenBluegray900 =>
      theme.textTheme.titleLarge!.sen.copyWith(
        color: appTheme.blueGray900.withOpacity(0.5),
      );
  static TextStyle get titleLargeSenDeepOrangeA700 =>
      theme.textTheme.titleLarge!.sen.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static TextStyle get titleLargeSenGray900 =>
      theme.textTheme.titleLarge!.sen.copyWith(
        color: appTheme.gray900,
      );
  static TextStyle get titleLargeSenPrimary =>
      theme.textTheme.titleLarge!.sen.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get titleMediumBlack90001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleMediumSen =>
      theme.textTheme.titleMedium!.sen.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumSenBluegray900 =>
      theme.textTheme.titleMedium!.sen.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumSenPrimary =>
      theme.textTheme.titleMedium!.sen.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallBluegray700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static TextStyle get titleSmallNunitoOnPrimary =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallSenGray700 =>
      theme.textTheme.titleSmall!.sen.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
}
