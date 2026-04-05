part of 'theme_manager_bloc.dart';

@immutable
sealed class ThemeManagerState {}

final class LightModeState extends ThemeManagerState {}

final class DarkModeState extends ThemeManagerState {}
