part of 'counterb_bloc.dart';

abstract class CounterbState {}

class CounterbInitial extends CounterbState {}

class InitializedCounterb extends CounterbState {
  final int number;

  InitializedCounterb(this.number);
}
