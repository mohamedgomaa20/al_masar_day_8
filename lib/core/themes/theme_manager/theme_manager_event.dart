part of 'theme_manager_bloc.dart';

@immutable
sealed class ThemeManagerEvent {}

final class ToggleThemeEvent extends ThemeManagerEvent {}
