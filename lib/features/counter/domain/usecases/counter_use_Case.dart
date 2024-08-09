import '../entities/counter_entity.dart';
// import '../repositories/counter_repository.dart';

abstract class CounterUseCase {
  // CounterRepository get _counterRepository;
  Future<CounterEntity> execute();
}