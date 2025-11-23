# Advanced UI Navigation App

This is a Flutter application that demonstrates advanced UI and navigation patterns.

## Activity 7 Demo

![Activity 7 Demo](activity7/act7AppDemo.gif)

## Screenshots

### Home
![Home Fragment](activity7/homeFragment.png)
![Home Fragment Landscape](activity7/homeFragmentLandscape.png)

### Profile
![Profile Gallery Fragment](activity7/profileGalleryFragment.png)
![Profile Gallery Landscape](activity7/profileGalleryLandscape.png)
![Profile Info Fragment](activity7/profileInfoFragment.png)
![Profile Info Landscape](activity7/profileInfoLandscape.png)

### Settings
![Settings Fragment](activity7/settingsFragment.png)
![Settings Landscape](activity7/settingsLandscape.png)

## Analysis and Learning

### 1. What did you learn about using fragments and navigation components?
In this Flutter project, "fragments" are analogous to modular widgets like `HomeScreen` and `ProfileScreen`. The core navigation component is the `BottomNavigationBar` in `MainNavigation`, which uses an `IndexedStack` to efficiently manage screen state, preserving it when switching tabs. I also observed nested navigation in the `ProfileScreen`, where a `TabBar` is implemented within one of the main screens, demonstrating a hierarchical navigation structure.

### 2. How did you make your UI adaptive to screen size or orientation?
The UI adapts using `OrientationBuilder` and `LayoutBuilder`. `OrientationBuilder` detects changes between portrait and landscape modes to adjust layouts, such as the number of columns in the `GridView` in the profile's gallery. `LayoutBuilder` uses the parent widget's constraints to create a responsive design that works on different screen sizes by, for example, adjusting padding or the grid's column count based on the available width.

### 3. What challenges did you face when combining Bottom Navigation and Tabs?
Combining these two navigation patterns requires careful state management to ensure the state of both the main screens and the individual tabs is preserved. This project solves that by using `IndexedStack` for the main navigation and a `DefaultTabController` for the nested tabs, which maintains the state of the `ProfileScreen`'s tabs even when switching to other main screens. Another challenge is maintaining a clear UI/UX, which is addressed by placing the `TabBar` in the `AppBar` of the `ProfileScreen`, making it clear that it's a secondary navigation level.
