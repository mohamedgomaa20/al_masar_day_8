import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_manager_event.dart';

part 'theme_manager_state.dart';

class ThemeManagerBloc extends Bloc<ThemeManagerEvent, ThemeManagerState> {
  ThemeManagerBloc() : super(DarkModeState()) {

    on<ToggleThemeEvent>((event, emit) {
      if (state is DarkModeState) {
        emit(LightModeState());
      } else {
        emit(DarkModeState());
      }
    });

  }
}
