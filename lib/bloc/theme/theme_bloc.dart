import 'dart:async';

import 'package:blavicon_app/theme/app_themes.dart';
import 'package:blavicon_app/theme/dark_theme.dart';
import 'package:blavicon_app/theme/light_theme.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(AppTheme.dark, darkTheme));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      if ((state.appTheme) == AppTheme.light) {
        yield ThemeState(AppTheme.dark, darkTheme);
      } else {
        yield ThemeState(AppTheme.light, lightTheme);
      }
    }
  }
}
