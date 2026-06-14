
import 'package:flutter/material.dart';

/// A centralized collection of icons used throughout the CookDex app.
///
/// This class prevents icon duplication and ensures a consistent visual language.
/// It's designed to be scalable, allowing for easy migration to custom icon packs or SVGs in the future.
/// All icons are static constants for easy access from anywhere in the app (e.g., `AppIcons.dashboard`).
class AppIcons {
  // This class is not meant to be instantiated.
  AppIcons._();

  // --- NAVIGATION ---
  /// Icons used for the main app navigation bar and routing.
  static const IconData dashboard = Icons.dashboard_outlined;
  static const IconData kitchen = Icons.kitchen_outlined;
  static const IconData map = Icons.map_outlined;
  static const IconData profile = Icons.person_outline;

  // --- COOKING & FOOD ---
  /// Icons related to recipes, ingredients, and the cooking process.
  static const IconData recipe = Icons.book_outlined;
  static const IconData ingredients = Icons.view_list_outlined;
  static const IconData pantry = Icons.inventory_2_outlined;
  static const IconData chefHat = Icons.restaurant_menu;
  static const IconData cookingPot = Icons.soup_kitchen_outlined;
  static const IconData timer = Icons.timer_outlined;
  static const IconData spicy = Icons.whatshot_outlined;
  static const IconData utensils = Icons.restaurant_outlined;
  static const IconData dish = Icons.dinner_dining_outlined;
  static const IconData restaurant = Icons.storefront_outlined;

  // --- AI & SMART FEATURES ---
  /// Icons for AI-powered assistance, recommendations, and analytics.
  static const IconData ai = Icons.auto_awesome_outlined;
  static const IconData magic = Icons.auto_fix_high_outlined;
  static const IconData autoGenerate = Icons.auto_awesome_motion_outlined;
  static const IconData recommendation = Icons.recommend_outlined;
  static const IconData analytics = Icons.analytics_outlined;
  static const IconData insights = Icons.insights_outlined;

  // --- PROGRESS & ACHIEVEMENTS ---
  /// Icons representing user progress, rewards, and milestones.
  static const IconData achievement = Icons.emoji_events_outlined;
  static const IconData trophy = Icons.emoji_events_outlined;
  static const IconData streak = Icons.local_fire_department_outlined;
  static const IconData level = Icons.star_border_outlined;
  static const IconData progress = Icons.show_chart_outlined;
  static const IconData star = Icons.star_outline;

  // --- ACTIONS ---
  /// Common action icons for buttons, dialogs, and interactive elements.
  static const IconData add = Icons.add_outlined;
  static const IconData edit = Icons.edit_outlined;
  static const IconData delete = Icons.delete_outline;
  static const IconData search = Icons.search;
  static const IconData filter = Icons.filter_list_outlined;
  static const IconData favorite = Icons.favorite_border_outlined;
  static const IconData favoriteFilled = Icons.favorite;
  static const IconData share = Icons.share_outlined;
  static const IconData settings = Icons.settings_outlined;
  static const IconData back = Icons.arrow_back_ios_new_outlined;
  static const IconData next = Icons.arrow_forward_ios_outlined;

  // --- AUTHENTICATION ---
  /// Icons for login, logout, and user account management.
  static const IconData email = Icons.mail_outline;
  static const IconData password = Icons.lock_outline;
  static const IconData guest = Icons.person_pin_circle_outlined;
  static const IconData login = Icons.login_outlined;
  static const IconData logout = Icons.logout_outlined;
  // Note: For brand icons like Google and Apple, it's best to use a package like `font_awesome_flutter`
  // or custom SVGs to comply with branding guidelines. Material Icons do not have them.
  // static const IconData google = ...;
  // static const IconData apple = ...;

  // --- MAP & EXPLORATION ---
  /// Icons related to geographic exploration and discovering cuisines.
  static const IconData globe = Icons.public_outlined;
  static const IconData location = Icons.location_on_outlined;
  static const IconData explore = Icons.explore_outlined;
  static const IconData route = Icons.route_outlined;
  static const IconData compass = Icons.compass_calibration_outlined;
  static const IconData travel = Icons.flight_takeoff_outlined;

  // --- PANTRY & SHOPPING ---
  /// Icons for managing pantry inventory and shopping lists.
  static const IconData shoppingCart = Icons.shopping_cart_outlined;
  static const IconData grocery = Icons.local_grocery_store_outlined;
  static const IconData fridge = Icons.kitchen_outlined;
  static const IconData inventory = Icons.inventory_outlined;
  static const IconData checklist = Icons.checklist_outlined;
}

/*
--------------------------------------------------------------------------------
| Why Centralized Icon Management?                                             |
--------------------------------------------------------------------------------
|
| 1. Consistency: Ensures the same icon is used for the same action across the
|    entire app, creating a unified and predictable user experience.
|
| 2. Maintainability: If an icon needs to be updated (e.g., changing from
|    `favorite_border` to a new custom heart icon), the change only needs to
|    happen in one place (`AppIcons.favorite`). All 50 places it's used will
|    update automatically.
|
| 3. Scalability: As the app grows, it's easy to see which icons are already in
|    use and to add new ones without creating duplicates or searching through
|    multiple files.
|
| 4. Clean Code: It decouples the UI from the specific icon source. The UI code
|    simply requests `AppIcons.add` without needing to know if it comes from
|    Material Icons, FontAwesome, or a custom SVG.
|
--------------------------------------------------------------------------------
| How to Migrate to Custom SVG Icons                                           |
--------------------------------------------------------------------------------
|
| If the app scales and requires a unique, branded icon set, this structure
| makes migration straightforward.
|
| 1. Add an SVG rendering package like `flutter_svg` to your `pubspec.yaml`.
|
| 2. Create a new class, for example, `CustomIcons`, that returns `Widget` or
|    `SvgPicture` instead of `IconData`.
|
|    ```dart
|    class CustomIcons {
|      static const String _assetPath = 'assets/icons';
|
|      static Widget dashboard({Color color, double size}) {
|        return SvgPicture.asset(
|          '$_assetPath/dashboard.svg',
|          color: color,
|          width: size,
|        );
|      }
|    }
|    ```
|
| 3. Use Search & Replace in your IDE to change `Icon(AppIcons.dashboard)` to
|    `CustomIcons.dashboard()`. Because all icons are centralized, this process
|    is significantly faster and less error-prone.
|
--------------------------------------------------------------------------------
*/
