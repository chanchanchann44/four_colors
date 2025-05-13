# 🎮 Color Match Game (Flutter + DDD + Clean Architecture)

This is a simple color-based puzzle game built with Flutter. The game uses **Cubit (BLoC)** for state management and follows a hybrid of **Domain-Driven Design (DDD)** and **Clean Architecture** principles for better structure, testability, and scalability.

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
│   │   └── failure.dart                    # Common failure handling (e.g., network, parsing)
│   └── utils/
│       └── timer_util.dart                # Utilities like delay, countdown, etc.
│
├── features/
│   └── color_game/
│       ├── domain/
│       ├── application/
│       ├── data/
│       └── presentation/
│           ├── bloc/
│           │   ├── color_game_bloc.dart
│           │   └── color_game_event.dart
│           │   └── color_game_state.dart
│           ├── pages/
│           │   └── color_game_page.dart
│           └── widgets/
│               └── color_tile.dart
