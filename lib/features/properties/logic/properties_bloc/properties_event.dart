part of 'properties_bloc.dart';

@immutable
sealed class PropertiesEvent {}

final class PropertiesToggleFavoriteEvent extends PropertiesEvent {
  final bool isFavorite;

  PropertiesToggleFavoriteEvent(this.isFavorite);
}

final class GetAllPropertiesEvent extends PropertiesEvent {}
