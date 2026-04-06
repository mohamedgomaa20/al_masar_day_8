part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int counter;

  const CounterState(this.counter);
}

final class CounterInitial extends CounterState {
  const CounterInitial(super.counter);
}

final class CounterIncrementState extends CounterState {
  const CounterIncrementState(super.counter);
}
final class CounterIncrementByTwoState extends CounterState {
  const CounterIncrementByTwoState(super.counter);
}
final class CounterDecrementState extends CounterState {
  const CounterDecrementState(super.counter);
}
final class CounterDecrementByTwoState extends CounterState {
  const CounterDecrementByTwoState(super.counter);
}

