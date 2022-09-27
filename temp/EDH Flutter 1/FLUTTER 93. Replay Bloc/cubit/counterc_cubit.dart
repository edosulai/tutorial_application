import 'package:replay_bloc/replay_bloc.dart';

part 'counterc_state.dart';

class CountercCubit extends ReplayCubit<CountercState> {
  CountercCubit(InitializedCounterc initializedCounterc)
      : super(CountercInitial());

  void increment() {
    emit((state is InitializedCounterc)
        ? InitializedCounterc((state as InitializedCounterc).number + 1)
        : InitializedCounterc(0));
  }
}
