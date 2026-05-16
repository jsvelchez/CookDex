import 'package:flutter/material.dart';

/// A class that holds all the color constants for the CookDex design system.
class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();

  // --- PRIMARY COLORS ---
  static const Color primary = Color(0xFFE5552C);
  static const Color paprika = Color(0xFFB4585C); // Corrected from 0xFFSB458C
  static const Color basil = Color(0xFF99A85C);
  static const Color saffron = Color(0xFFE0B550); // Corrected from 0xFF9FF63D to match swatch

  // --- NEUTRAL COLORS ---
  static const Color warmIvory = Color(0xFFFDFBF5);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color mediumGrey = Color(0xFFE0E0E0);
  static const Color darkGrey = Color(0xFFBDBDBD);
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF666666);

  // --- PROGRESSION ACCENTS ---
  static const Color progressionAccent1 = Color(0xFFED8834);
  static const Color progressionAccent2 = Color(0xFFE0B550);
}
