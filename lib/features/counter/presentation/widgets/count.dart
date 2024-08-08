part of '../pages/counter_page.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        int value = state.counter.value;
        return Center(
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 100),
          ),
        );
      },
    );
  }
}
