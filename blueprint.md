# CookDex App Blueprint

## Overview

CookDex is a Flutter application designed to provide a premium and modern user experience for discovering and managing recipes. The app features a warm, culinary-inspired design with a focus on clean, readable typography and a spacious, card-based layout.

## Style & Design

The app's visual identity is defined in `lib/core/theme/app_theme.dart` and is built on the following principles:

*   **Color Palette**: The color scheme is inspired by natural, culinary tones. The primary accent color is a paprika red (`#E5552C`), complemented by basil green, and saffron yellow. The neutral colors are warm, with an ivory background and various shades of grey for text and surfaces.
*   **Typography**: The app uses the 'Inter' font from Google Fonts to create an elegant and readable text hierarchy. The typography is designed to feel editorial, with clear distinctions between headlines, titles, and body text.
*   **Component Styling**: All Material Design components, including buttons, cards, app bars, and input fields, have been styled to match the app's premium aesthetic. This includes soft shadows, rounded corners, and consistent spacing.
*   **Spacing**: The app uses a 4-pixel grid system for all spacing and layout, ensuring a harmonious and balanced design.

## Features

*   **Custom Theme**: A comprehensive and consistent theme system is implemented in `lib/core/theme/app_theme.dart`.
*   **Home Screen**: A simple home screen is implemented in `lib/main.dart` to showcase the app's theme and provide a basic layout.

## Current Task: Initial Setup and Theme Implementation

*   **Resolved Theme Issues**: I identified and fixed a duplicate property in the `_buildChipTheme` method in `lib/core/theme/app_theme.dart`.
*   **Applied Custom Theme**: I updated `lib/main.dart` to use the `AppTheme.lightTheme` instead of the default Flutter theme.
*   **Created a `HomeScreen`**: I replaced the default counter application with a more relevant `HomeScreen` to better demonstrate the app's design.
*   **Created `blueprint.md`**: I created this document to provide a clear overview of the project and to track its development.
