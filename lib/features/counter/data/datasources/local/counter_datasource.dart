import '../../models/counter_model.dart';

abstract class CounterDatasource {
  Future<CounterModel> getCounter();
  Future<void> saveCounter({required CounterModel counterModel});
}
