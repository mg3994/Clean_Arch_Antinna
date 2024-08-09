import '../../domain/usecases/counter_use_case.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/counter_entity.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // final CounterUseCase getCounterUseCase;
  // final CounterUseCase incrementCounterUseCase;
  // final CounterUseCase decrementCounterUseCase;
  final CounterUseCase getCounterUseCase,
      incrementCounterUseCase,
      decrementCounterUseCase;

  CounterBloc(this.getCounterUseCase, this.decrementCounterUseCase,
      this.incrementCounterUseCase)
      : super(const _CounterInitial(counter: CounterEntity(value: 0))) {
    on<CounterEvent>((event, emit) async {
      // Start loading
      emit(state.copyWith(isLoading: true));
      await event.when(
        getCounter: () async {
          try {
            final counter = await getCounterUseCase();

            emit(_CounterLoaded(counter: counter, isLoading: false));
          } catch (e) {
            emit(const _CounterError(
              message: "Error Loading Counter",
              counter: CounterEntity(value: 0),
              isLoading: false,
            ));
          }

          // emit(state);
        },
        incrementCounter: () async {
          // final currentValue = state.counter.value;
          // emit(CounterState.loaded(CounterEntity(value: currentValue + 1)));
          try {
            final counter = await incrementCounterUseCase();
            emit(_CounterLoaded(counter: counter, isLoading: false));
          } catch (e) {
            emit(const _CounterError(
                message: "Error Loading Counter",
                counter: CounterEntity(value: 0),
                isLoading: false));
          }
        },
        decrementCounter: () async {
          try {
            final counter = await decrementCounterUseCase();
            emit(_CounterLoaded(counter: counter, isLoading: false));
          } catch (e) {
            emit(const _CounterError(
                message: "Error Loading Counter",
                counter: CounterEntity(value: 0),
                isLoading: false));
          }

          // final currentValue = state.counter.value;
          // if (currentValue > 0) {
          //   emit(CounterState.loaded(CounterEntity(value: currentValue - 1)));
          // } else {
          //   emit(const CounterState.error(
          //       'Cannot decrement below 0', CounterEntity(value: 0)));
          // }
        },
      );
    });
  }
}
