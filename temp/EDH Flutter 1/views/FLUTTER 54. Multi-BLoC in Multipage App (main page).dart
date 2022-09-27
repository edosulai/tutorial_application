import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(color%20bloc).dart';
import 'package:tutorial_application/blocs/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(counter%20bloc).dart';
import 'package:tutorial_application/views/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(draft%20page).dart';
import 'package:tutorial_application/views/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(second%20page).dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => Text(
                  number.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                color: color,
                shape: const StadiumBorder(),
                child: const Text(
                  "Click to Change",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
