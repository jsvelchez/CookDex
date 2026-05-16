import 'package:flutter/material.dart';

/// A class that holds all the spacing, padding, margin, radius, and layout constants
/// for the CookDex design system. This helps in maintaining a consistent and
/// scalable design across the entire app.
///
/// The design philosophy emphasizes spacious layouts, soft premium card spacing,
/// elegant breathing room, rounded modern UI, and a layered card-based interface.
class AppSpacing {
  // Private constructor to prevent instantiation
  AppSpacing._();

  // --- BASE SPACING SCALE ---
  // Based on a 4-pixel grid, which is a common practice in modern UI design.
  // This provides a consistent and harmonious rhythm to the design.

  /// Extra Small Spacing: 4.0
  static const double xs = 4.0;

  /// Small Spacing: 8.0
  static const double sm = 8.0;

  /// Medium Spacing: 16.0
  static const double md = 16.0;

  /// Large Spacing: 24.0
  static const double lg = 24.0;

  /// Extra Large Spacing: 32.0
  static const double xl = 32.0;

  /// Extra Extra Large Spacing: 48.0
  static const double xxl = 48.0;


  // --- SCREEN & SECTION PADDING ---
  // Consistent padding for screens and sections to ensure a balanced layout.

  /// Horizontal padding for screens.
  static const EdgeInsets screenPaddingHorizontal = EdgeInsets.symmetric(horizontal: lg);

  /// Vertical padding for screens.
  static const EdgeInsets screenPaddingVertical = EdgeInsets.symmetric(vertical: lg);
  
  /// General padding for most screens.
  static const EdgeInsets screenPadding = EdgeInsets.all(lg);

  /// Spacing between sections on a page.
  static const double sectionSpacing = xxl;

  /// Spacing for lists and stacked items.
  static const double listSpacing = md;

  // --- CARD SPACING ---
  // Defines the spacing for cards to create a premium, layered feel.

  /// Internal padding for cards.
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  
  /// Margin around cards.
  static const EdgeInsets cardMargin = EdgeInsets.symmetric(vertical: sm, horizontal: md);

  /// Spacing between cards in a list or grid.
  static const double cardGap = md;

  /// Spacing for stacked sections within a card or panel.
  static const double stackedSectionSpacing = lg;


  // --- BORDER RADIUS SYSTEM ---
  // A system of radii for creating soft, rounded corners that are modern and inviting.

  /// Small radius for items like buttons or small containers.
  static const BorderRadius radiusSm = BorderRadius.all(Radius.circular(8.0));
  static const Radius radiusCircularSm = Radius.circular(8.0);

  /// Medium radius for cards and larger containers.
  static const BorderRadius radiusMd = BorderRadius.all(Radius.circular(16.0));
  static const Radius radiusCircularMd = Radius.circular(16.0);

  /// Large radius for panels and bottom sheets.
  static const BorderRadius radiusLg = BorderRadius.all(Radius.circular(24.0));
  static const Radius radiusCircularLg = Radius.circular(24.0);

  /// Extra large radius for prominent, smooth corners.
  static const BorderRadius radiusXl = BorderRadius.all(Radius.circular(32.0));
  static const Radius radiusCircularXl = Radius.circular(32.0);

  /// Pill/Chip radius for fully rounded items like chips or floating action buttons.
  static const BorderRadius radiusPill = BorderRadius.all(Radius.circular(100.0));
  static const Radius radiusCircularPill = Radius.circular(100.0);

  // --- COMPONENT DIMENSIONS ---
  // Standard heights for common UI components.

  /// Standard height for buttons.
  static const double buttonHeight = 56.0;
  
  /// Standard height for text input fields.
  static const double inputHeight = 56.0;

  /// Height for ingredient chips.
  static const double chipHeight = 32.0;

  /// Height for the bottom navigation bar.
  static const double bottomNavBarHeight = 80.0;
  
  /// Height for a standard app bar.
  static const double appBarHeight = 64.0;


  // --- ELEVATION & SHADOW HELPERS ---
  // Constants to help with creating a sense of depth and hierarchy.

  /// Blur radius for light, soft shadows.
  static const double lightShadowBlur = 16.0;

  /// Standard elevation for cards.
  static const double cardElevation = 4.0;
  
  /// Elevation for floating elements like panels or modals.
  static const double floatingElevation = 8.0;
  
  /// Spacing for floating cards to create a lifted effect.
  static const double floatingCardSpacing = 8.0;


  // --- LAYOUT HELPERS ---
  // Padding and spacing for specific layout components like modals and overlays.
  
  /// Padding for map overlays.
  static const EdgeInsets mapOverlayPadding = EdgeInsets.all(md);

  /// Padding for modals and dialogs.
  static const EdgeInsets modalPadding = EdgeInsets.all(lg);
  
  /// Padding for bottom sheets.
  static const EdgeInsets bottomSheetPadding = EdgeInsets.symmetric(horizontal: lg, vertical: xl);

  /// Spacing for cooking mode, which may have a more condensed layout.
  static const double cookingModeSpacing = sm;
}
