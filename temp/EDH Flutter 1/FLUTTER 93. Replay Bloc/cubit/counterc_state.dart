part of 'counterc_cubit.dart';

abstract class CountercState {}

class CountercInitial extends CountercState {}

class InitializedCounterc extends CountercState {
  final int number;

  InitializedCounterc(this.number);
}
