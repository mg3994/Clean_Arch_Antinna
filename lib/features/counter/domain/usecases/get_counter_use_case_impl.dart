// import necessary class dependencies
import '../entities/counter_entity.dart';

import '../repositories/counter_repository.dart';
import 'counter_use_case.dart';

//  Define a Flutter class with name GetCounterUsecase
class GetCounterUseCaseImpl implements CounterUseCase {
  // Private variable to hold an insance of CounterRepository
  final CounterRepository _counterRepository;
  // Constructor for the class , having required named final couneterRepository parameter
  const GetCounterUseCaseImpl( this._counterRepository);
  //Asynchronous method to execute the usecase and get the counter value
  @override
  Future<CounterEntity> call() async {
    // Use the CounterRepository to get the counter value asynchronously
    return await _counterRepository.getCounter();
  }
}
