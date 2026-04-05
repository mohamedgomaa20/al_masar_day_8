import 'package:al_masar_day_8/features/auth/data/models/user_data_class.dart';
import 'package:al_masar_day_8/features/auth/services/firebase_auth_services.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginLoadingState());

      try {
        await FirebaseAuthServices.login(event.user);
        emit(LoginSuccessState());
      } catch (e) {
        emit(LoginFailureState(e.toString()));
      }
    });

    on<RegisterEvent>((event, emit) async {
      emit(RegisterLoadingState());

      try {
        await FirebaseAuthServices.register(event.user);
        emit(RegisterSuccessState());
      } catch (e) {
        emit(RegisterFailureState(e.toString()));
      }
    });

    on<LogoutEvent>((event, emit) async {
      emit(LogoutLoadingState());
      try {
        await FirebaseAuthServices.logout();
        emit(LogoutSuccessState());
      } catch (e) {
        emit(LogoutFailureState(e.toString()));
      }
    });

    on<LoginWithGoogleEvent>((event, emit) async {
      emit(LoginWithGoogleLoadingState());

      try {
        await FirebaseAuthServices.signInWithGoogle();
        emit(LoginWithGoogleSuccessState());
      } catch (e) {
        emit(LoginWithGoogleFailureState(e.toString()));
      }
    });
  }
}
