import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/flutter%2059.%20flutter_bloc%20ver%201.0%20&%20bloc%20visual%20studio%20code%20plugin/bloc/counter_bloc.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc cBloc = BlocProvider.of<CounterBloc>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterBloc(CounterState(0)),
        child: Scaffold(
          appBar: AppBar(title: const Text("flutter_bloc ver 5.0")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) => Text(
                    state.value.toString(),
                    style: const TextStyle(
                        fontSize: 80, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        cBloc.add(Decrement());
                      },
                      child: const Icon(Icons.arrow_downward),
                    ),
                    const SizedBox(width: 20),
                    FloatingActionButton(
                      onPressed: () {
                        cBloc.add(Increment());
                      },
                      child: const Icon(Icons.arrow_upward),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
