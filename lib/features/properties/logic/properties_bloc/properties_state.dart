part of 'properties_bloc.dart';

@immutable
sealed class PropertiesState {}

final class PropertiesInitial extends PropertiesState {}

final class PropertiesLoadingState extends PropertiesState {}

final class PropertiesSuccessState extends PropertiesState {}

final class PropertiesFailureState extends PropertiesState {}
final class ToggleFavoriteState extends PropertiesState {
  final bool isFavorite;

  ToggleFavoriteState(this.isFavorite);
}
