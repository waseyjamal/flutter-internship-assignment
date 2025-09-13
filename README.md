# Flutter Internship Assignment

A complete Flutter application recreating 4 Figma designs with pixel-perfect precision and responsive design.

## 🚀 Features

- **4 Responsive Screens**: Upgrade Homepage, Subscription, Mixer, and Mixer-VIP
- **State Management**: GetX for reactive state management
- **Pixel-Perfect UI**: Exact match to Figma designs
- **Responsive Design**: Works on all screen sizes
- **Clean Architecture**: Separated controllers, screens, and widgets

## 📱 Screens

| Screen | Description |
|--------|-------------|
| **Upgrade Homepage** | Premium feature promotion with interactive benefits |
| **Subscription Screen** | Plan selection with interactive cards and pricing |
| **Mixer Screen** | Audio controls with sliders and reset functionality |
| **Mixer VIP Screen** | Premium audio controls with feature gating |

## 🛠️ Tech Stack

- **Flutter**: 3.19.5
- **GetX**: 4.6.6 (State Management)
- **Dart**: 3.3.0

## 🏗️ Project Structure

lib/
├── controllers/ # GetX Controllers
│ ├── upgrade_controller.dart
│ ├── subscription_controller.dart
│ ├── mixer_controller.dart
│ └── mixer_vip_controller.dart
├── screens/ # UI Screens
│ ├── upgrade_screen.dart
│ ├── subscription_screen.dart
│ ├── mixer_screen.dart
│ └── mixer_vip_screen.dart
├── widgets/ # Reusable Components
│ ├── benefit_tile.dart
│ ├── plan_card.dart
│ └── mixer_slider.dart
└── main.dart # App Entry Point


## 📦 Installation & Setup

```bash
# Clone the repository
git clone https://github.com/waseyjamal/flutter-internship-assignment.git

# Navigate to project directory
cd flutter-internship-assignment

# Install dependencies
flutter pub get

# Run the application
flutter run

📞 Contact
Wasey Jamal
Flutter Developer
waseyjamal000@gmail.com
9335312420
https://www.linkedin.com/in/wasey-jamal-472996253/
