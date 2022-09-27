import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2058.%20Infinite%20(Auto%20Loading)%20List%20with%20BLoC%20(post%20bloc).dart';
import 'package:tutorial_application/widgets/FLUTTER%2058.%20Infinite%20(Auto%20Loading)%20List%20with%20BLoC%20(post%20item).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController controller = ScrollController();
  PostBloc bloc;

  void onScroll() {
    double maxScroll = controller.position.maxScrollExtent;
    double currentScroll = controller.position.pixels;

    if (currentScroll == maxScroll) bloc.add(PostEvent());
  }

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<PostBloc>(context);
    controller.addListener(onScroll);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
        create: (_) => PostBloc(PostUninitialized())..add(PostEvent()),
        child: Scaffold(
          appBar: AppBar(title: const Text("Infinite List with BLoC")),
          body: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                if (state is PostUninitialized) {
                  return const Center(
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else {
                  PostLoaded postLoaded = state as PostLoaded;
                  return ListView.builder(
                    controller: controller,
                    itemCount: (postLoaded.hasReachedMax)
                        ? postLoaded.posts.length
                        : postLoaded.posts.length + 1,
                    itemBuilder: (context, index) =>
                        (index < postLoaded.posts.length)
                            ? PostItem(
                                postLoaded.posts[index],
                              )
                            : Container(
                                child: const Center(
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
