import 'package:replay_bloc/replay_bloc.dart';

part 'counterb_event.dart';
part 'counterb_state.dart';

class CounterbBloc extends ReplayBloc<CounterbEvent, CounterbState> {
  CounterbBloc(CounterbState initialState) : super(initialState);

  @override
  Stream<CounterbState> mapEventToState(CounterbEvent event) async* {
    if (event is Increment) {
      yield state is CounterbInitial
          ? InitializedCounterb(0)
          : InitializedCounterb((state as InitializedCounterb).number + 1);
    }
  }
}
