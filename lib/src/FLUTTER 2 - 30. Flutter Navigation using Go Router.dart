import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorial_application/models/FLUTTER%202%20-%2030.%20Flutter%20Navigation%20using%20Go%20Router%20(user).dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2030.%20Flutter%20Navigation%20using%20Go%20Router%20(about%20page).dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2030.%20Flutter%20Navigation%20using%20Go%20Router%20(edit%20profile%20page).dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2030.%20Flutter%20Navigation%20using%20Go%20Router%20(login%20page).dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2030.%20Flutter%20Navigation%20using%20Go%20Router%20(main%20page).dart';
import 'package:tutorial_application/pages/FLUTTER%202%20-%2030.%20Flutter%20Navigation%20using%20Go%20Router%20(profile%20page).dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter router = GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/',
        name: 'main_page',
        builder: (context, state) => const MainPage(),
        routes: [
          GoRoute(
            path: 'about',
            name: 'about',
            builder: (context, state) => const AboutPage(),
          ),
          GoRoute(
            path: 'profile/name',
            name: 'profile',
            builder: (context, state) {
              String name = state.params['name'] ?? 'no name';
              return ProfilePage(name: name);
            },
            routes: [
              GoRoute(
                path: 'edit_profile',
                name: 'edit_profile',
                builder: (context, state) {
                  Object? object = state.extra;

                  if (object != null && object is User) {
                    return EditProfilePage(user: object);
                  } else {
                    return EditProfilePage(
                      user: User('no name', 'no email'),
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
