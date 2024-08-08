import 'package:antinna/features/counter/domain/repositories/counter_repository.dart';

import '../../data/datasources/local/counter_datasource.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

part '../widgets/count.dart';
part '../widgets/increment_decrement_buttons.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final counterDatasource = CounterDatasource();
    final CounterRepository counterRepository =  CounterRepositoryImpl();
    final GetCounterUseCase getCounterUseCase = GetCounterUseCase();
    final IncrementCounterUseCase incrementCounterUseCase = IncrementCounterUseCase() ;
    final DecrementCounterUseCase decrementCounterUseCase = DecrementCounterUseCase();
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const Scaffold(
        body: Count(),
        floatingActionButton: IncrementDecrementButtons(),
      ),
    );
  }
}
