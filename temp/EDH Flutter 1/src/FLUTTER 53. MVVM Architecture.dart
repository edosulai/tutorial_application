import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2053.%20MVVM%20Architecture%20(user%20bloc).dart';
import 'package:tutorial_application/models/FLUTTER%2038.%20HTTP%20Request%20_%20Koneksi%20ke%20API%20(Kumpulan%20Data)%20(user).dart';
import 'package:tutorial_application/widgets/FLUTTER%2053.%20MVVM%20Architecture%20(user%20card).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => UserBloc(UninitializedUser()),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text("Demo MVVM"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  bloc.add(random.nextInt(10) + 1);
                },
                child: const Text(
                  "Pick Random User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              BlocBuilder<UserBloc, User>(
                builder: (context, user) =>
                    user is UninitializedUser ? Container() : UserCard(user),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
