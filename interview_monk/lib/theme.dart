import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFF4A90E2);
  static const Color secondary = Color(0xFF50E3C2);
  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color backgroundDark = Color(0xFF101922);
  static const Color textLight = Color(0xFF212529);
  static const Color textDark = Color(0xFFE5E7EB);
  static const Color textSecondaryLight = Color(0xFF617589);
  static const Color textSecondaryDark = Color(0xFF9CA3AF);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primary,
      scaffoldBackgroundColor: backgroundLight,
      textTheme: GoogleFonts.interTextTheme(
        ThemeData.light().textTheme,
      ).copyWith(
        bodyLarge: const TextStyle(color: textLight),
        bodyMedium: const TextStyle(color: textSecondaryLight),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: primary,
      scaffoldBackgroundColor: backgroundDark,
      textTheme: GoogleFonts.interTextTheme(
        ThemeData.dark().textTheme,
      ).copyWith(
        bodyLarge: const TextStyle(color: textDark),
        bodyMedium: const TextStyle(color: textSecondaryDark),
      ),
    );
  }
}
