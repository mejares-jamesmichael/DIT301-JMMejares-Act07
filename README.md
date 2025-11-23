# Advanced UI Navigation App

A Flutter application demonstrating modern mobile app navigation patterns, responsive design, and modular architecture.

## Features

- **Bottom Navigation Bar**: Switch seamlessly between Home, Profile, and Settings screens
- **Tabbed Layout**: Profile section with Info and Gallery tabs
- **Responsive Design**: Adapts to portrait/landscape orientations and different screen sizes
- **State Preservation**: Maintains screen state when switching between navigation tabs
- **Material Design 3**: Modern UI with Material Design 3 theming

## Screenshots

### Home Screen
- Responsive grid layout with 12 items
- Adapts based on screen size and orientation:
  - Portrait (phone): 2 columns
  - Portrait (tablet): 3 columns
  - Landscape (phone): 3 columns
  - Landscape (tablet): 4 columns

### Profile Screen
- **Info Tab**: User profile with avatar, contact information
- **Gallery Tab**: Responsive grid with 20 photo placeholders

### Settings Screen
- Three categories: Account Settings, Preferences, Other
- Interactive feedback via SnackBar when items are tapped
- Constrained width (600dp max) on large screens

## Project Structure

```
lib/
├── main.dart                    # Application entry point
├── widgets/
│   └── main_navigation.dart    # Bottom navigation controller
└── screens/
    ├── home_screen.dart        # Home screen with responsive grid
    ├── profile_screen.dart     # Profile screen with tabs
    └── settings_screen.dart    # Settings screen with list
```

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- An Android/iOS emulator or physical device

### Installation

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd advanceduinavapp
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Technical Implementation

### Responsive Design Patterns
- **OrientationBuilder**: Detects portrait/landscape orientation changes
- **LayoutBuilder**: Provides screen dimensions for adaptive layouts
- **GridView**: Creates flexible, responsive grid layouts
- **IndexedStack**: Preserves state across bottom navigation

### State Management
- StatefulWidget for MainNavigation (manages bottom nav state)
- StatelessWidget for screens (immutable UI components)

### Navigation
- Bottom navigation with 3 tabs (Home, Profile, Settings)
- IndexedStack preserves scroll positions and state
- TabController for Profile screen tabs

## Testing

Run analysis:
```bash
flutter analyze
```

Run tests:
```bash
flutter test
```

## Building for Release

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## License

This project is created for educational purposes.
