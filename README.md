# 🎮 Color Match Game (Flutter + DDD + Clean Architecture)

This is a simple color-based puzzle game built with Flutter. The game uses **BLoC** for state management and follows a hybrid of **Domain-Driven Design (DDD)** and **Clean Architecture** principles for better structure, testability, and scalability.

---

## 🧠 Game Concept

- The screen shows 4 color tiles.
- A random **color name** appears in the center with a random **text color**.
- The player must tap the tile that matches the **name**, not the color.
- Correct tap = +1 point, game speeds up.
- Wrong tap = Game over.

---

## 🗂️ Project Structure

lib/
├── core/
│   ├── error/
│   │   └── failure.dart             # Common failure handling (e.g., network, parsing)
│   └── utils/
│   │   └── enum.dart                # Enum, Global function, etc.
│   └── constants/                   # ColorPalette, Theme, Font, Spacing, etc.
│
├── features/
│   └── xxx/
│       ├── domain/                     # entities, repositories_interface
│       ├── application/                # usecases
│       ├── data/                       # models, repositories, services
│       └── presentation/               # UI, Bloc
│           ├── bloc/
│           │   ├── xxx_bloc.dart
│           │   └── xxx_event.dart
│           │   └── xxx_state.dart
│           ├── screens/
│           │   └── xxx_screen.dart
│           └── widgets/
│               └── xxx_widget.dart
