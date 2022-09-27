import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2045.%20BLoC%20State%20Management%20(flutter_bloc%20Package)%20(color%20bloc).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return MaterialApp(
      home: BlocProvider<ColorBloc>(
        create: (context) => ColorBloc(Colors.amber),
        child: Scaffold(
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  bloc.add(ColorEvent.to_amber);
                },
              ),
              const SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () {
                  bloc.add(ColorEvent.to_light_blue);
                },
              ),
            ],
          ),
          appBar: AppBar(title: const Text("BLoC dengan flutter_bloc")),
          body: Center(
            child: BlocBuilder<ColorBloc, Color>(
              builder: (context, currentColor) => AnimatedContainer(
                duration: const Duration(
                  milliseconds: 500,
                ),
                width: 100,
                height: 100,
                color: currentColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
