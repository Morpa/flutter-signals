import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

final brightness = signal(Brightness.light);

final themeMode = computed(() {
  if (brightness() == Brightness.dark) {
    return ThemeMode.dark;
  } else {
    return ThemeMode.light;
  }
});
