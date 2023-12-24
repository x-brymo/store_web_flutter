import 'package:flutter/material.dart';
import 'package:store_web_flutter/core/utils/size_utils.dart';
import 'package:store_web_flutter/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumBlue500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue500,
      );
  static get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumDeeppurple900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepPurple900,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumIndigoA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA400,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineMediumOnPrimaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineMediumPrimary_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.56),
      );
  // Title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMedium19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumDeeppurple900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple900,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumIndigoA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA400,
      );
  static get titleMediumIndigoA400_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA400,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary19 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
