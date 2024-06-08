import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}

class MDBTheme {
  static const Color primaryColor = Color(0xFF4CB9B4); // Medium Aquamarine
  static const Color secondaryColor = Color(0xFF695B77); // Dark Lavender
  static const Color surfaceColor = Color(0xFF232931); // Light Gray
  static const Color surfaceContainerColor = Color(0xFF232931);
  static const Color errorColor = Color(0xFFB00020); // Red
  static const Color onPrimaryColor = Color(0xFFEBEBEB);
  static const Color onSecondaryColor = Color(0xFFEBEBEB);
  static const Color onSurfaceColor = Color(0xFFEBEBEB);
  static const Color onErrorColor = Color(0xFFEBEBEB);

  static const radiusM = 16.0;

  static ThemeData get theme {
    return ThemeData(
      textTheme: MDBTextTheme._textTheme,
      colorScheme: const ColorScheme(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        surfaceContainer: surfaceContainerColor,
        error: errorColor,
        onPrimary: onPrimaryColor,
        onSecondary: onSecondaryColor,
        onSurface: onSurfaceColor,
        onError: onErrorColor,
        brightness: Brightness.light,
      ),
      primaryColor: primaryColor,
      scaffoldBackgroundColor: surfaceColor,
      buttonTheme: const ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusM),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(MDBTheme.secondaryColor),
        ),
      ),
      searchBarTheme: SearchBarThemeData(
        backgroundColor: WidgetStateProperty.all(MDBTheme.secondaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusM),
          ),
        ),
      ),
    );
  }
}

class MDBTextTheme {
  static final TextTheme _textTheme = GoogleFonts.poppinsTextTheme().copyWith(
    bodyLarge: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}
