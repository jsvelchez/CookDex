
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

/// ## CookDex Typography System
///
/// This file defines the complete text styling for the CookDex app, ensuring a
/// consistent, elegant, and highly readable user experience. The typography is
/// inspired by modern editorial design, blending warmth with the clarity needed
/// for a functional kitchen assistant.
///
/// ### Philosophy:
/// - **Warm & Editorial:** Evokes the feeling of a premium food magazine.
/// - **Highly Readable:** Optimized for at-a-glance reading while cooking.
/// - **Structured & Modern:** Clear hierarchy for intuitive navigation and information consumption.
///
/// ### Fonts:
/// - **Primary (Inter):** A clean, versatile, and highly legible sans-serif for all
///   body, title, and label text. Chosen for its excellent readability at all sizes.
/// - **Accent (Playfair Display):** An elegant, high-contrast serif for display
///   headings to add a touch of editorial sophistication. Used sparingly for hero moments.
///
class AppTextTheme {
  // Private constructor to prevent instantiation
  AppTextTheme._();

  /// --- FONT DEFINITIONS --- ///

  static final _primaryFont = GoogleFonts.interTextTheme();
  static final _accentFont = GoogleFonts.playfairDisplayTextTheme();

  /// ### Base Text Style
  ///
  /// Defines the default color for all text styles.
  static const TextStyle _baseTextStyle = TextStyle(
    color: AppColors.textPrimary, // Default text color
  );

  ///
  /// --- TYPOGRAPHY SYSTEM ---
  ///
  /// The complete [TextTheme] for the CookDex application, designed according
  /// to Material 3 principles but customized for the app's unique aesthetic.
  ///
  static final TextTheme textTheme = TextTheme(
    //
    // --- DISPLAY STYLES ---
    // Usage: Onboarding hero screens, major announcements, splash screens.
    //
    displayLarge: _accentFont.displayLarge!.merge(_baseTextStyle).copyWith(
          fontSize: 57,
          fontWeight: FontWeight.bold, // 700
          letterSpacing: -0.25,
          height: 1.12, // 64px line height
        ),
    displayMedium: _accentFont.displayMedium!.merge(_baseTextStyle).copyWith(
          fontSize: 45,
          fontWeight: FontWeight.w600, // 600
          letterSpacing: 0,
          height: 1.15, // 52px line height
        ),
    displaySmall: _accentFont.displaySmall!.merge(_baseTextStyle).copyWith(
          fontSize: 36,
          fontWeight: FontWeight.w600, // 600
          letterSpacing: 0,
          height: 1.22, // 44px line height
        ),

    //
    // --- HEADLINE STYLES ---
    // Usage: Recipe titles, section headers, dashboard titles, cuisine names.
    //
    headlineLarge: _primaryFont.headlineLarge!.merge(_baseTextStyle).copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w600, // 600
          letterSpacing: 0,
          height: 1.25, // 40px line height
        ),
    headlineMedium: _primaryFont.headlineMedium!.merge(_baseTextStyle).copyWith(
          fontSize: 28,
          fontWeight: FontWeight.w600, // 600
          letterSpacing: 0,
          height: 1.28, // 36px line height
        ),
    headlineSmall: _primaryFont.headlineSmall!.merge(_baseTextStyle).copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w600, // 600
          letterSpacing: 0,
          height: 1.33, // 32px line height
        ),

    //
    // --- TITLE STYLES ---
    // Usage: Card titles, ingredient group headers, navigation drawers.
    //
    titleLarge: _primaryFont.titleLarge!.merge(_baseTextStyle).copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w500, // 500
          letterSpacing: 0,
          height: 1.27, // 28px line height
        ),
    titleMedium: _primaryFont.titleMedium!.merge(_baseTextStyle).copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500, // 500
          letterSpacing: 0.15,
          height: 1.5, // 24px line height
        ),
    titleSmall: _primaryFont.titleSmall!.merge(_baseTextStyle).copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500, // 500
          letterSpacing: 0.1,
          height: 1.42, // 20px line height
        ),

    //
    // --- BODY TEXT STYLES ---
    // Usage: Recipe steps, descriptions, AI suggestions, long-form content.
    // **PRIORITIZES READABILITY**
    //
    bodyLarge: _primaryFont.bodyLarge!.merge(_baseTextStyle).copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400, // 400
          letterSpacing: 0.5,
          height: 1.5, // 24px line height (Increased for readability)
        ),
    bodyMedium: _primaryFont.bodyMedium!.merge(_baseTextStyle).copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400, // 400
          letterSpacing: 0.25,
          height: 1.57, // 22px line height (Increased for readability)
        ),
    bodySmall: _primaryFont.bodySmall!.merge(_baseTextStyle).copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400, // 400
          letterSpacing: 0.4,
          height: 1.33, // 16px line height
        ),

    //
    // --- LABEL STYLES ---
    // Usage: Buttons, chips (ingredients, tags), navigation items, UI controls.
    // **COMPACT & LEGIBLE**
    //
    labelLarge: _primaryFont.labelLarge!.merge(_baseTextStyle).copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w500, // 500
          letterSpacing: 0.1,
          height: 1.42, // 20px line height
        ),
    labelMedium: _primaryFont.labelMedium!.merge(_baseTextStyle).copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500, // 500
          letterSpacing: 0.5,
          height: 1.33, // 16px line height
        ),
    labelSmall: _primaryFont.labelSmall!.merge(_baseTextStyle).copyWith(
          fontSize: 11,
          fontWeight: FontWeight.w500, // 500
          letterSpacing: 0.5,
          height: 1.45, // 16px line height
        ),
  );
}
