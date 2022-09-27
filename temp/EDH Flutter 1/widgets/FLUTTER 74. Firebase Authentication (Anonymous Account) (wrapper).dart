import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_application/views/FLUTTER%2074.%20Firebase%20Authentication%20(Anonymous%20Account)%20(login%20page).dart';
import 'package:tutorial_application/views/FLUTTER%2074.%20Firebase%20Authentication%20(Anonymous%20Account)%20(main%20page).dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);

    return (firebaseUser == null) ? LoginPage() : MainPage(firebaseUser);
  }
}
