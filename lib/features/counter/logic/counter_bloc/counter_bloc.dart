import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterIncrementState(state.counter + 1));
    });
    on<CounterDecrementEvent>((event, emit) {
      emit(CounterDecrementState(state.counter - 1));
    });
    on<CounterIncrementByTwoEvent>((event, emit) {
      emit(CounterIncrementByTwoState(state.counter + 2));
    });
    on<CounterDecrementByTwoEvent>((event, emit) {
      emit(CounterDecrementByTwoState(state.counter - 2));
    });
  }
}
