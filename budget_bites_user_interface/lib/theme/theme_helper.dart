import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23.h),
          ),
          shadowColor: appTheme.indigoA70033,
          elevation: 6,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.onPrimary.withOpacity(1),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray10001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black90002,
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black90002,
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90002,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.black90002,
          fontSize: 40.fSize,
          fontFamily: 'Montez',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 35.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black90002,
          fontSize: 30.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 28.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black90002,
          fontSize: 24.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 13.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 11.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black90002,
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black90002,
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFF10027),
    primaryContainer: Color(0XFFECBB67),
    secondaryContainer: Color(0XFFD10D0D),

    // Error colors
    errorContainer: Color(0XFFEA2242),
    onError: Color(0XFF263238),
    onErrorContainer: Color(0XFF09051C),

    // On colors(text colors)
    onPrimary: Color(0X7FFFFFFF),
    onPrimaryContainer: Color(0XFF212121),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber400 => Color(0XFFF7CB2E);
  Color get amber800 => Color(0XFFFF9012);
  Color get amberA700 => Color(0XFFFFA90D);

  // Black
  Color get black900 => Color(0XFF0D0C0C);
  Color get black90001 => Color(0XFF09041B);
  Color get black90002 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFB9D1FF);

  // BlueGray
  Color get blueGray100 => Color(0XFFD6D6D6);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF898A8D);
  Color get blueGray40001 => Color(0XFF8E8F92);
  Color get blueGray50 => Color(0XFFF1F1F1);

  // Gray
  Color get gray200 => Color(0XFFF0F0F0);
  Color get gray300 => Color(0XFFDEE1EF);
  Color get gray30001 => Color(0XFFE0E0E0);
  Color get gray400 => Color(0XFFC2C2C2);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFFA9A9A9);
  Color get gray50001 => Color(0XFF979797);
  Color get gray600 => Color(0XFF828282);
  Color get gray60001 => Color(0XFF7C7D80);
  Color get gray700 => Color(0XFF5C5C5C);
  Color get gray800 => Color(0XFF3B3B3B);
  Color get gray900 => Color(0XFF1B1B1B);
  Color get gray90001 => Color(0XFF252525);
  Color get gray90099 => Color(0X99181818);

  // Green
  Color get green500 => Color(0XFF32CD70);
  Color get green600 => Color(0XFF3BB243);
  Color get greenA700 => Color(0XFF20C968);
  Color get greenA70001 => Color(0XFF06F23A);

  // Indigo
  Color get indigoA20011 => Color(0X115A6CEA);
  Color get indigoA70033 => Color(0X331B39FF);

  // LightGreen
  Color get lightGreen500 => Color(0XFF89C93C);
  Color get lightGreen700 => Color(0XFF73A624);
  Color get lightGreen800 => Color(0XFF648E20);
  Color get lightGreenA700 => Color(0XFF29E01A);

  // Orange
  Color get orange200 => Color(0XFFF2C58B);
  Color get orange600 => Color(0XFFFD8700);
  Color get orangeA100 => Color(0XFFFFD66E);
  Color get orangeA200 => Color(0XFFFBB039);
  Color get orangeA20001 => Color(0XFFF89945);

  // Pink
  Color get pink50 => Color(0XFFFEE5E9);

  // Red
  Color get red50 => Color(0XFFFFECEC);
  Color get red500 => Color(0XFFEA4335);
  Color get red50001 => Color(0XFFE65037);
  Color get red600 => Color(0XFFE4442A);
  Color get red60001 => Color(0XFFE33A24);
  Color get red900 => Color(0XFF8C2E09);
  Color get redA200 => Color(0XFFFF3551);
  Color get redA70075 => Color(0X75FF0000);
  Color get redA7007501 => Color(0X75E60202);

  // Teal
  Color get teal300 => Color(0XFF3AD29F);

  // White
  Color get whiteA700 => Color(0XFFFDFDFD);
  Color get whiteA70001 => Color(0XFFFEFEFF);

  // Yellow
  Color get yellow300 => Color(0XFFFBDF69);
  Color get yellow30001 => Color(0XFFFCEB70);
  Color get yellow700 => Color(0XFFFFC42E);
  Color get yellowA100 => Color(0XFFFFF388);
  Color get yellowA10001 => Color(0XFFFDFF93);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
