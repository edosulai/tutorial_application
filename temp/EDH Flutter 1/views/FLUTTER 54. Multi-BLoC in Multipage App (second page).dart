import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(color%20bloc).dart';
import 'package:tutorial_application/blocs/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(counter%20bloc).dart';
import 'package:tutorial_application/views/FLUTTER%2054.%20Multi-BLoC%20in%20Multipage%20App%20(draft%20page).dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => GestureDetector(
                  onTap: () {
                    counterBloc.add(number++);
                  },
                  child: Text(
                    number.toString(),
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPink);
                    },
                    color: Colors.pink,
                    shape: (color == Colors.pink)
                        ? const CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          )
                        : const CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toAmber);
                    },
                    color: Colors.amber,
                    shape: (color == Colors.amber)
                        ? const CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          )
                        : const CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPurple);
                    },
                    color: Colors.purple,
                    shape: (color == Colors.purple)
                        ? const CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          )
                        : const CircleBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
