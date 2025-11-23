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
Coming from other platforms, I was used to the term "fragments," and I learned that in Flutter, the closest equivalent is just a modular widget. For instance, `HomeScreen` and `ProfileScreen` are treated as separate, reusable UI components. For the main navigation, I saw how `BottomNavigationBar` was paired with an `IndexedStack`. I thought this was a clever way to keep each screen's state alive, so when you tap back to a previous tab, you don't lose your scroll position or any data. I also noticed a neat hierarchical navigation pattern in the `ProfileScreen`, where a `TabBar` was nested inside one of the main screens.

### 2. How did you make your UI adaptive to screen size or orientation?
Making the UI adaptive was an interesting challenge. I learned that Flutter provides some really handy tools for this. I used `OrientationBuilder` to check if the phone was in portrait or landscape mode and then adjusted the layout accordingly. For example, the photo gallery in the profile screen shows more columns when the phone is turned sideways. I also used `LayoutBuilder`, which was great for making the UI work on different screen sizes. It let me adjust things like padding and column counts based on the actual screen width, which made the app look good on both smaller and larger devices.

### 3. What challenges did you face when combining Bottom Navigation and Tabs?
One of the trickier parts was getting the `BottomNavigationBar` to play nicely with the `TabBar` in the profile section. The main challenge was state management—I didn't want to lose the state of the tabs when I switched to a different screen and came back. The solution was to use an `IndexedStack` for the main bottom navigation, which keeps all the main screens in the widget tree. For the tabs within the profile screen, a `DefaultTabController` handled their state automatically. From a design perspective, it was also important to make the navigation intuitive. Placing the `TabBar` inside the `AppBar` of the `ProfileScreen` made it clear that those tabs were a subsection of the profile, which I think worked out well.
