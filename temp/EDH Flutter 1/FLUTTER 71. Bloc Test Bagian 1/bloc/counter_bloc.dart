import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    yield (event is Add)
        ? state + event.amount
        : (event is Subtract)
            ? state - event.amount
            : State;
  }
}
