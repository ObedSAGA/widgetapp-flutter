import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Provides an immutable color list
final colorListProvider = Provider((ref) => colorList);

// Provides a boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Provide an integer
final selectedColorProvider = StateProvider<int>((ref) => 0);
