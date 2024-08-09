// import '../repositories/counter_repository.dart';

import '../entities/counter_entity.dart';

abstract class CounterUseCase {
  // CounterRepository get _counterRepository;
  Future<CounterEntity> execute();
}
