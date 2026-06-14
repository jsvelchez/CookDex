import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/constants/app_spacing.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = _buildLightTheme();

  static ThemeData _buildLightTheme() {
    final baseTheme = ThemeData.light(useMaterial3: true);
    final textTheme = _buildTextTheme(baseTheme.textTheme);

    return baseTheme.copyWith(
      scaffoldBackgroundColor: AppColors.warmIvory,
      primaryColor: AppColors.primary,
      colorScheme: _lightColorScheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: textTheme,
      appBarTheme: _buildAppBarTheme(textTheme),
      cardTheme: _buildCardTheme(),
      elevatedButtonTheme: _buildElevatedButtonTheme(),
      outlinedButtonTheme: _buildOutlinedButtonTheme(),
      textButtonTheme: _buildTextButtonTheme(),
      inputDecorationTheme: _buildInputDecorationTheme(),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(),
      chipTheme: _buildChipTheme(textTheme),
      dividerTheme: _buildDividerTheme(),
      iconTheme: _buildIconTheme(),
    );
  }

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.basil,
    onSecondary: Colors.white,
    error: Colors.redAccent,
    onError: Colors.white,
    surface: AppColors.softGrey,
    onSurface: AppColors.textPrimary,
  );

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: GoogleFonts.inter(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary),
      headlineLarge: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary),
      headlineMedium: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      titleLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      titleMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary),
      bodyLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColors.textSecondary),
      bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: AppColors.textSecondary),
      labelLarge: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          letterSpacing: 0.5),
    );
  }

  static AppBarTheme _buildAppBarTheme(TextTheme textTheme) {
    return AppBarTheme(
      backgroundColor: AppColors.warmIvory,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: textTheme.titleLarge?.copyWith(color: AppColors.textPrimary),
      iconTheme: const IconThemeData(color: AppColors.textPrimary, size: 24),
    );
  }

  static CardThemeData _buildCardTheme() {
    return CardThemeData(
      elevation: AppSpacing.cardElevation,
      color: AppColors.softGrey,
      shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusMd),
      margin: EdgeInsets.zero,
    );
  }

  static ElevatedButtonThemeData _buildElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusSm),
        fixedSize: const Size.fromHeight(AppSpacing.buttonHeight),
        elevation: AppSpacing.lightShadowBlur,
        textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      ),
    );
  }

  static OutlinedButtonThemeData _buildOutlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusSm),
        fixedSize: const Size.fromHeight(AppSpacing.buttonHeight),
        textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      ),
    );
  }

  static TextButtonThemeData _buildTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.softGrey,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.md),
      border: OutlineInputBorder(
        borderRadius: AppSpacing.radiusMd,
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: AppSpacing.radiusMd,
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppSpacing.radiusMd,
        borderSide: const BorderSide(color: AppColors.primary, width: 2.0),
      ),
      hintStyle: GoogleFonts.inter(color: AppColors.textSecondary),
    );
  }

  static BottomNavigationBarThemeData _buildBottomNavBarTheme() {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.warmIvory,
      elevation: AppSpacing.floatingElevation,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 12),
      unselectedLabelStyle:
          GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 12),
      selectedIconTheme: const IconThemeData(color: AppColors.primary, size: 28),
      unselectedIconTheme:
          const IconThemeData(color: AppColors.textSecondary, size: 26),
    );
  }

  static ChipThemeData _buildChipTheme(TextTheme textTheme) {
    return ChipThemeData(
      backgroundColor: AppColors.mediumGrey,
      selectedColor: AppColors.primary,
      labelStyle:
          textTheme.bodyMedium?.copyWith(color: AppColors.textPrimary),
      secondaryLabelStyle:
          textTheme.bodyMedium?.copyWith(color: Colors.white),
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm, vertical: AppSpacing.xs),
      shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusPill),
      side: BorderSide.none,
    );
  }

  static DividerThemeData _buildDividerTheme() {
    return const DividerThemeData(
      color: AppColors.mediumGrey,
      thickness: 1.0,
      space: AppSpacing.md,
      indent: AppSpacing.md,
      endIndent: AppSpacing.md,
    );
  }

  static IconThemeData _buildIconTheme() {
    return const IconThemeData(
      color: AppColors.textSecondary,
      size: 24.0,
    );
  }
}
