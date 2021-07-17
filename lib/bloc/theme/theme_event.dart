part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChanged extends ThemeEvent {

  const ThemeChanged();

  @override
  List<AppTheme> get props => [];
}
