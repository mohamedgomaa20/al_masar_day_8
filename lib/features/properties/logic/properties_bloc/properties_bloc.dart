import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'properties_event.dart';

part 'properties_state.dart';

class PropertiesBloc extends Bloc<PropertiesEvent, PropertiesState> {
  PropertiesBloc() : super(PropertiesInitial()) {
    on<PropertiesToggleFavoriteEvent>((event, emit) {
      emit(ToggleFavoriteState(event.isFavorite));
    });
    on<GetAllPropertiesEvent>((event, emit) async {
      emit(PropertiesLoadingState());
      try {
        await Future.delayed(Duration(seconds: 5));
        emit(PropertiesFailureState());
      } catch (e) {
        emit(PropertiesSuccessState());
      }
    });
  }
}
