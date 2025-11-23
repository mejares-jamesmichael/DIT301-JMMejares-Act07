# Agent Instructions for Advanced UI Navigation App

## Build/Test Commands
- **Install deps**: `flutter pub get`
- **Run app**: `flutter run`
- **Build Android**: `flutter build apk --release`
- **Build iOS**: `flutter build ios --release`
- **Run tests**: `flutter test`
- **Run single test**: `flutter test test/widget_test.dart`
- **Lint code**: `flutter analyze`

## Code Style Guidelines
- **Imports**: Use relative imports for local files (`../screens/`), absolute for packages
- **Formatting**: Follow flutter_lints rules (included in analysis_options.yaml)
- **Types**: Use explicit types for all variables and function parameters
- **Naming**: camelCase for variables/functions, PascalCase for classes/widgets
- **Error handling**: Use try-catch for async operations, validate inputs
- **Widgets**: Use `const` constructors where possible, prefer StatelessWidget when no state needed
- **State management**: Use StatefulWidget for navigation state, IndexedStack for preservation
- **Responsive design**: Use OrientationBuilder + LayoutBuilder for adaptive layouts