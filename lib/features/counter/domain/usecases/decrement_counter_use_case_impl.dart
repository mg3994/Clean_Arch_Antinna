// import necessary class dependencies
import '../entities/counter_entity.dart';

import '../repositories/counter_repository.dart';
import 'counter_use_case.dart';

//  Define a Flutter class with name DecrementCounterUseCase
class DecrementCounterUseCaseImpl implements CounterUseCase {
  // Private variable to hold an insance of CounterRepository
  final CounterRepository _counterRepository;
  // Constructor for the class , having required named final couneterRepository parameter
  const DecrementCounterUseCaseImpl(this._counterRepository);
  // Asynchronous method to execute the usecase and increment the counter value

  @override
  Future<CounterEntity> execute() async {
    // Use the counterRepository to get the current counter value
    final currentCounter = await _counterRepository.getCounter();
    // Decrement the current counter value
    final updatedCounterEntity = CounterEntity(value: currentCounter.value - 1);
    // Save the updated counter entity
    await _counterRepository.saveCounter(updatedCounterEntity);
    // Return the updated counter entity
    return updatedCounterEntity;
  }
}
