<div align="center">

# 🚀 Flutter Template

### Production-ready Flutter template with clean architecture

<p align="center">
  <img src="https://github.com/yusriltakeuchi/flutter_template/blob/main/screenshot/FLUTTER_TEMPLATE_LIGHT.png?raw=true" width="280" height="580">
  <img src="https://github.com/yusriltakeuchi/flutter_template/blob/main/screenshot/FLUTTER_TEMPLATE_DARK.png?raw=true" width="280" height="580">
</p>

[![Flutter](https://img.shields.io/badge/Flutter-3.38.4-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.10.3-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

[Features](#-features) • [Quick Start](#-quick-start) • [Structure](#-project-structure) • [Documentation](#-documentation)

</div>

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 📱 **Platform Support** | Android & iOS ready |
| 🏗️ **DDD Architecture** | Clean, scalable code organization |
| 🧊 **Freezed** | Immutable models & unions |
| 🎯 **BLoC Pattern** | Predictable state management |
| 🗺️ **AutoRoute** | Type-safe navigation |
| 🌍 **Multi-Flavor** | Dev, Staging, Production environments |
| 💉 **Dependency Injection** | Modular & testable |
| 🌓 **Theme Support** | Light, Dark, System modes |
| 🔧 **Error Handling** | Centralized failure management |

---

## 🚀 Quick Start

### 1️⃣ Install Template

```bash
# Install copy_template globally
dart pub global activate copy_template

# Create your project
copy_template my_app https://github.com/yusriltakeuchi/flutter_template.git /path/to/folder
```

### 2️⃣ Setup Package Name

```bash
# Change package name
dart run change_app_package_name:main com.your.package

# Update flavor names in:
# - android/app/build.gradle (productFlavors)
# - utils/flavor/flavor_utils.dart
```

### 3️⃣ Run Project

```bash
flutter run --flavor dev
```

**Available flavors:** `dev` | `staging` | `prod`

---

## 📁 Project Structure

```
lib/
├── 🎯 bloc/               # State management
├── ⚙️ config/             # App configuration
├── 🏗️ core/               # Core utilities
│   ├── components/        # Reusable widgets
│   ├── constant/          # Constants
│   ├── models/            # Core models
│   └── networks/          # API client
├── 🎨 domain/             # Business logic
│   ├── cubit/             # Safe cubit base
│   ├── dto/               # Data Transfer Objects
│   ├── entities/          # Domain entities
│   ├── models/            # Domain models
│   └── repositories/      # Repository interfaces
├── ✨ extension/          # Dart extensions
├── 🔧 infrastructure/     # Data layer
│   ├── datasource/        # Data sources
│   └── repositories/      # Repository implementations
├── 💉 injection/          # Dependency injection
├── 📱 presentation/       # UI screens
├── 🗺️ routing/            # Navigation
├── 🎨 theme/              # App themes
└── 🛠️ utils/              # Utilities
```

---

## 🔐 Android Keystore Setup

Create `android/key.properties`:

```properties
storePassword=yourpassword
keyPassword=yourpassword
keyAlias=youralias
storeFile=/path/to/key.jks
```

---

## 🎨 Generate App Icons

This template uses [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) with flavor support.

### Generate Icons for All Flavors

```bash
# Generate for development flavor
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons.yaml

# Generate for staging flavor
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-staging.yaml

# Generate for production flavor
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-prod.yaml
```

### Configure Icons

Edit icon configurations in:
- `flutter_launcher_icons.yaml` - Development flavor icons
- `flutter_launcher_icons-staging.yaml` - Staging flavor icons
- `flutter_launcher_icons-prod.yaml` - Production flavor icons

```yaml
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/icons/your_icon.png"
  # Add more customization as needed
```

**💡 Tip:** Place your icon files in `assets/icons/` directory and update the `image_path` in the config files.

---

## 📚 Documentation

### 📄 Create New Page

1. **Create screen** in `presentation/`
2. **Add annotation:**
   ```dart
   @RoutePage()
   class HomeScreen extends StatelessWidget {
     // Your screen code
   }
   ```
3. **Generate routes:**
   ```bash
   make runner-build
   ```
4. **Register route** in `route.dart`:
   ```dart
   @override
   List<AutoRoute> get routes => [
     AutoRoute(page: HomeRoute.page),
   ];
   ```

### 🌓 Theme Mode

Access theme with `BlocBuilder<ThemeBloc>`. Modes: `light`, `dark`, `system`

### 🎯 BLoC State Management

Use `BlocBuilder` with Freezed's `when` or `maybeWhen` for clean state handling:

```dart
// Using .when() - Handle all states
BlocBuilder<UserBloc, UserState>(
  builder: (context, state) {
    return state.when(
      initial: () => const IdleLoading(),
      loading: () => const LoadingListView(),
      error: (message) => ErrorWidget(message),
      loaded: (data) => DataView(data),
    );
  },
)

// Using .maybeWhen() - Handle specific states only
BlocBuilder<ThemeBloc, ThemeState>(
  builder: (context, state) {
    return state.maybeWhen(
      loaded: (mode) => YourWidget(mode),
      orElse: () => const CircularProgressIndicator(),
    );
  },
)
```

### 🎨 Dynamic Colors

Use context extensions for theme-aware colors:

```dart
// Auto-adapts to light/dark theme
Container(
  color: context.containerColor,
  child: Text(
    'Hello',
    style: TextStyle(color: context.blackWhiteColor),
  ),
)
```

**Available colors:**
- `context.isDark` - Check if dark mode is active
- `context.blackWhiteColor` - Black in light, white in dark
- `context.containerColor` - Card/container background
- `context.backgroundColor` - Screen background
- `context.greyDarkColor` - Grey text colors

### 🌍 Access Current Flavor

```dart
flavor.current  // Returns: dev, staging, or prod
```

### 📐 Responsive Sizing

Use `AppSetting` for responsive dimensions across all devices:

```dart
// Font Size - automatically adapts to screen size
Text(
  'Title',
  style: TextStyle(fontSize: AppSetting.setFontSize(16)),
)

// Width & Height
Container(
  width: AppSetting.setWidth(200),
  height: AppSetting.setHeight(100),
)

// Device dimensions
AppSetting.deviceWidth   // Full screen width
AppSetting.deviceHeight  // Full screen height

// Quick spacing
Space.w(16)  // Horizontal spacing
Space.h(20)  // Vertical spacing

// Device checks
AppSetting.isLargePhone(context)
AppSetting.isTablet(context)
```

### 📡 Data Fetching Flow

1. `domain/entities` → Entity
2. `domain/dto` → DTO with Freezed & JSON serialization
3. `infrastructure/datasource/base` → API Extension
4. `infrastructure/datasource` → DataSource
5. `domain/repositories` → Repository Interface
6. `infrastructure/repositories` → Repository Implementation
7. `injection` → Register Dependencies
8. `bloc` → Create BLoC/Cubit
9. `presentation` → Build UI

---

## 🎨 IntelliJ File Templates

Speed up development with pre-built templates for Entity, DTO, and BLoC.

📥 **[Download Templates](https://drive.google.com/file/d/1_bDbVwEfTAuccLj3MIjWYE1OomxnQa-7/view?usp=sharing)**

**Installation:**
1. Download template file
2. IntelliJ → `File` → `Manage IDE Settings` → `Import Settings`
3. Select downloaded file

---

## 🔗 Related Packages

[![assets_cleaner](https://img.shields.io/pub/v/assets_cleaner?label=assets_cleaner&color=blue)](https://pub.dev/packages/assets_cleaner)

Clean unused assets from your Flutter project automatically.

---

<div align="center">

**Made with ❤️ by [Yusril Rapsanjani](https://github.com/yusriltakeuchi)**

⭐ Star this repo if you find it helpful!

</div>