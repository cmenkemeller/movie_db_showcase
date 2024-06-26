import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}

class MDBTheme {
  static const Color primaryColor = Color(0xFF4CB9B4);
  static const Color secondaryColor = Color(0xFF3A3F47);
  static const Color surfaceColor = Color(0xFF242A32);
  static const Color surfaceContainerColor = Color(0xFF242A32);
  static const Color errorColor = Color.fromARGB(255, 232, 8, 49);
  static const Color onPrimaryColor = Color(0xFFEEEEEE);
  static const Color onSecondaryColor = Color(0xFFEEEEEE);
  static const Color onSurfaceColor = Color(0xFFEBEBEB);
  static const Color onErrorColor = Color(0xFFEBEBEB);

  static const tirtiaryColor = Color(0xFF4FCCA3);

  static const radiusM = 16.0;
  static const paddingMargin = 29.0;

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
        brightness: Brightness.dark,
      ),
      splashColor: secondaryColor.withOpacity(0.9),
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
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: secondaryColor,
        foregroundColor: onSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusM),
        ),
        extendedTextStyle: MDBTextTheme._textTheme.labelLarge,
        elevation: 0,
        extendedSizeConstraints: const BoxConstraints.tightFor(height: 42),
        extendedPadding: const EdgeInsets.symmetric(horizontal: 17),
      ),
      chipTheme: ChipThemeData(
        showCheckmark: false,
        backgroundColor: secondaryColor,
        disabledColor: secondaryColor,
        selectedColor: tirtiaryColor,
        secondarySelectedColor: tirtiaryColor,
        labelStyle:
            MDBTextTheme._textTheme.bodyMedium?.copyWith(color: onSurfaceColor),
        secondaryLabelStyle:
            MDBTextTheme._textTheme.labelMedium?.copyWith(color: surfaceColor),
        labelPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 2),
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusM),
        ),
        side: BorderSide.none,
      ),
    );
  }
}

class MDBTextTheme {
  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 36,
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  );
}
