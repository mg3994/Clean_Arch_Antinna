part of 'counter_bloc.dart';

@freezed
sealed class CounterState with _$CounterState {
  const factory CounterState.initial({
    required CounterEntity counter,
    @Default(false) bool isLoading,
  }) = _CounterInitial;
  const factory CounterState.loaded({
    required CounterEntity counter,
    @Default(false) bool isLoading,
  }) = _CounterLoaded;
  const factory CounterState.error({
    required String message,
    required CounterEntity counter,
    @Default(false) bool isLoading,
  }) = _CounterError;
  const CounterState._(); // Private constructor for shared methods

  // @override
  // CounterEntity get counter => when(
  //   initial: (counter, _) => counter,
  //   loaded: (counter, _) => counter,
  //   error: (message, counter, _) => counter,
  // );
}
