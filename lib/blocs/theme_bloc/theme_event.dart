part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeLightEvent extends ThemeEvent {}

class ThemeDarkEvent extends ThemeEvent {}
