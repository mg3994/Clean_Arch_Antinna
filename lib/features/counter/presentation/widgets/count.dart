part of '../pages/counter_page.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
      builder: (context, state) {
        int value = state.counter.value;
        return Center(
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 100),
          ),
        );
      },
      listener: (BuildContext context, CounterState state) {
        if (state.isLoading) {
          print("if" + state.isLoading.toString() + "${state.counter.value}");
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("${state.counter.value}")));
        } else {
          print("else" + state.isLoading.toString() + "${state.counter.value}");
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        }
      },
    );
  }
}
