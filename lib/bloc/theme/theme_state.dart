part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;
  final AppTheme appTheme;

  const ThemeState(this.appTheme, this.themeData);

  @override
  List get props => [appTheme, themeData];
}
