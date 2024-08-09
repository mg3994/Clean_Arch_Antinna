import 'dart:math';



import '../../../data/models/counter_model.dart';
import 'counter_datasource.dart';

//Define a dart class named CounterDatasource
class CounterDatasourceImpl implements CounterDatasource {
  //Private variable '_value' of type int
  int _value = Random().nextInt(10000); //default stored

  // Asynchronous function to retrieve the counter value as a CounterModel
  @override
  Future<CounterModel> getCounter() async {
    // Return a CounterModel instance with current value
    // await Future.delayed(Duration(seconds: 4));

    return CounterModel(value: _value);
  }

  //Asynchronous function to save the counter value using a CounterModel
  @override
  Future<void> setCounter({required CounterModel counterModel}) async {
    // Update the private variable '_value' with the value from the provided counterModel as argumet
    // await Future.delayed(Duration(seconds: 4));

    _value = counterModel.value;
  }
}
