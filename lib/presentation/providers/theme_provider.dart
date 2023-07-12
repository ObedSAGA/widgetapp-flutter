import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Provides an immutable color list
final colorListProvider = Provider((ref) => colorList);

// Provides a boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Provide an integer
final selectedColorProvider = StateProvider<int>((ref) => 0);

//An object AppTheme type
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // State is an instance of AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkModeEnabled: !state.isDarkModeEnabled);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
