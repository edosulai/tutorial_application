import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(color%20bloc).dart';
import 'package:tutorial_application/blocs/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(counter%20bloc).dart';
import 'package:tutorial_application/views/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(main%20page).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(create: (_) => ColorBloc(Colors.pink)),
        BlocProvider<CounterBloc>(create: (_) => CounterBloc(0))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
