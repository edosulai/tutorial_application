import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/models/FLUTTER%2038.%20HTTP%20Request%20_%20Koneksi%20ke%20API%20(Kumpulan%20Data)%20(user).dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(initialState);

  @override
  Stream<User> mapEventToState(int event) async* {
    yield await User.getUserFromAPI(event);
  }
}
