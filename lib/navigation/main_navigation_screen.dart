
// This file only manages app-level bottom navigation and should remain free from business logic.

import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/constants/app_icons.dart';
import 'package:myapp/core/constants/app_spacing.dart';
import 'package:myapp/features/screens/dashboard_screen.dart';
import 'package:myapp/features/screens/kitchen_screen.dart';
import 'package:myapp/features/screens/profile_screen.dart';
import 'package:myapp/features/screens/world_screen.dart';

/// Manages the main bottom navigation bar and screen switching for the app.
///
/// This stateful widget holds the navigation state, including the currently
/// selected tab and the list of screens to display. It uses an [IndexedStack]
/// to preserve the state of each screen as the user navigates between tabs.
class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  // --- STATE ---
  /// The index of the currently selected tab.
  int _selectedIndex = 0;

  /// The list of primary screens accessible from the bottom navigation bar.
  static final List<Widget> _screens = <Widget>[
    const DashboardScreen(),
    const KitchenScreen(),
    const WorldScreen(),
    const ProfileScreen(),
  ];

  // --- BEHAVIOR ---
  /// Handles tab selection and updates the screen index.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // --- UI ---
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: _buildFloatingBottomNavBar(),
    );
  }

  /// Builds the floating bottom navigation bar with a modern, rounded design.
  ///
  /// The navigation bar is wrapped in a container to create a "floating"
  /// effect with padding and a soft shadow.
  Widget _buildFloatingBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.warmIvory,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(12),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSpacing.lg),
          topRight: Radius.circular(AppSpacing.lg),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSpacing.lg),
          topRight: Radius.circular(AppSpacing.lg),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(AppIcons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.kitchen),
              label: 'Kitchen',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.map),
              label: 'World',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.profile),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: AppColors.warmIvory,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.textSecondary,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
        ),
      ),
    );
  }
}
