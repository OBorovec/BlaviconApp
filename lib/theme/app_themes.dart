import 'package:blavicon_app/theme/dark_theme.dart';
import 'package:blavicon_app/theme/light_theme.dart';
import 'package:flutter/material.dart';

enum AppTheme { light, dark }

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.light: LightTheme,
  AppTheme.dark: DarkTheme
};
