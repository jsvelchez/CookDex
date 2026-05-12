
import 'package:flutter/material.dart';

/// A class that holds all the colors used in the CookDex app.
class AppColors {
  AppColors._(); // This class is not meant to be instantiated.

  // --- BACKGROUND COLORS ---
  /// Primary background color, a soft and warm off-white.
  /// Used for main screens and large background areas.
  static const Color warmIvory = Color(0xFFFAF3E0);

  /// Secondary background color, a brighter, cleaner white.
  /// Used for modals, pop-ups, or areas that need to stand out from the primary background.
  static const Color riceWhite = Color(0xFFFEFEFA);

  /// Color for card surfaces and elevated widgets.
  /// A slightly darker beige to create depth.
  static const Color softBeige = Color(0xFFEAE7DC);

  // --- PRIMARY & ACCENT COLORS ---
  /// The main brand color for primary actions, buttons, and active states.
  /// A vibrant and inviting red, inspired by paprika.
  static const Color paprikaRed = Color(0xFFE53935);

  /// A fresh, natural green for pantry-related features and success states.
  /// Represents freshness, health, and positive actions.
  static const Color basilGreen = Color(0xFF388E3C);

  /// A rich, golden yellow for achievements, progression, and rewards.
  /// Evokes a sense of value, warmth, and culinary success.
  static const Color saffronGold = Color(0xFFFFB300);

  // --- NEUTRAL & TEXT COLORS ---
  /// The primary color for text and high-contrast UI elements.
  /// A dark, almost-black charcoal for maximum readability.
  static const Color roastedCharcoal = Color(0xFF212121);

  /// A softer, warm brown for secondary text and less important details.
  /// Provides a gentler contrast than charcoal.
  static const Color soyBrown = Color(0xFF6D4C41);

  /// A subtle, earthy beige for borders, dividers, and disabled states.
  /// Helps to subtly separate UI elements without being distracting.
  static const Color mushroomBeige = Color(0xFFD7CCC8);

  // --- SEMANTIC COLORS ---
  /// Color to indicate a successful operation or state.
  /// Aligned with Basil Green for consistency.
  static const Color success = basilGreen;

  /// Color to indicate a warning or a state that requires user attention.
  /// A warm, noticeable orange-gold.
  static const Color warning = Color(0xFFFFA000);

  /// Color to indicate an error, failure, or destructive action.
  /// A clear but not overly harsh red.
  static const Color error = Color(0xFFD32F2F);
}
