import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('id'),
      Locale('en', 'US'),
    ],
    path: 'assets/lang/',
    startLocale: const Locale('id'),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Multi Language App'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('greeting').tr(),
                const SizedBox(height: 10),
                const Text('name').tr(args: ['Edo Sulaiman', 'Indonesia']),
                const SizedBox(height: 10),
                const Text('film').tr(namedArgs: {
                  'title': 'My Name',
                  'platform': 'Netflix',
                }),
                const SizedBox(height: 10),
                const Text('character').tr(gender: 'female'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.setLocale((const Locale('id')));
                      },
                      child: const Text('Indonesia'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.setLocale('en_US'.toLocale());
                      },
                      child: const Text('US English'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
