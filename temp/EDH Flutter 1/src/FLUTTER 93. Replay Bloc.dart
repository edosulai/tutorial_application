import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_application/FLUTTER%2093.%20Replay%20Bloc/bloc/counterb_bloc.dart';
import 'package:tutorial_application/FLUTTER%2093.%20Replay%20Bloc/cubit/counterc_cubit.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => CounterbBloc(InitializedCounterb(0))),
          BlocProvider(create: (_) => CountercCubit(InitializedCounterc(0))),
        ],
        child: Scaffold(
          body: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bloc State Management",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      BlocBuilder<CounterbBloc, CounterbState>(
                        builder: (context, state) {
                          return Text(
                            (state is InitializedCounterb)
                                ? "${state.number}"
                                : "-",
                            style: GoogleFonts.poppins(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          );
                        },
                      ),
                      RaisedButton(
                        onPressed: () {
                          context.read<CounterbBloc>().add(Increment());
                        },
                        child: Text(
                          "+",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            onPressed: () {
                              context.read<CounterbBloc>().undo();
                            },
                            child: Text(
                              "Undo",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          RaisedButton(
                            onPressed: () {
                              context.read<CounterbBloc>().redo();
                            },
                            child: Text(
                              "Redo",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cubit State Management",
                        style: GoogleFonts.poppins(fontSize: 25),
                      ),
                      BlocBuilder<CountercCubit, CountercState>(
                        builder: (context, state) {
                          return Text(
                            (state is InitializedCounterc)
                                ? "${state.number}"
                                : "-",
                            style: GoogleFonts.poppins(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        },
                      ),
                      RaisedButton(
                        onPressed: () {
                          context.read<CountercCubit>().increment();
                        },
                        child: Text(
                          "+",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            onPressed: () {
                              context.read<CountercCubit>().undo();
                            },
                            child: Text(
                              "Undo",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          RaisedButton(
                            onPressed: () {
                              context.read<CountercCubit>().redo();
                            },
                            child: Text(
                              "Redo",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
