import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

class ThemeHelper {
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  PrimaryColors _getThemeColors() {
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  ThemeData _getThemeData() {
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blue600,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
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
          color: appTheme.black900.withOpacity(0.71),
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.black900.withOpacity(0.2),
      ),
    );
  }

  PrimaryColors themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 10.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.redA200,
          fontSize: 52.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 35.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 30.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
      );
}

class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF2ECC71),
    primaryContainer: Color(0XFFE70011),
    secondaryContainer: Color(0XFFF39C12),

    errorContainer: Color(0XFF237D1B),
    onError: Color(0XFF4CAF50),

    onPrimary: Color(0XFF101820),
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}

class PrimaryColors {
  Color get black900 => Color(0XFF000000);

  Color get blue300 => Color(0XFF5DADE2);
  Color get blue600 => Color(0XFF3498DB);
  Color get blueA400 => Color(0XFF2F88FF);

  Color get blueGray100 => Color(0XFFCCCCCC);
  Color get blueGray10001 => Color(0XFFD5D8DC);
  Color get blueGray10002 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray800 => Color(0XFF37474F);

  Color get gray200 => Color(0XFFF3ECEC);
  Color get gray400 => Color(0XFFC5C5C5);
  Color get gray500 => Color(0XFF9A9999);
  Color get gray600 => Color(0XFF7D7D7D);

  Color get lightBlue900 => Color(0XFF1F618D);

  Color get orange300 => Color(0XFFF7B956);

  Color get pink100 => Color(0XFFFFB0BC);
  Color get pink10001 => Color(0XFFFFB6C1);
  Color get pink50 => Color(0XFFFFE7EA);
  Color get pink5001 => Color(0XFFFFE5E9);

  Color get redA200 => Color(0XFFFF526C);

  Color get whiteA700 => Color(0XFFFFFEFE);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
