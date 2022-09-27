import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_application/blocs/FLUTTER%2052.%20ListView%20Builder%20+%20BLoC%20(product%20card).dart';
import 'package:tutorial_application/widgets/FLUTTER%2049.%20Product%20Card%20(BoxShadow,%20RoundedRectangleBorder)%20(product%20card).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Random r = Random();

  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProductBloc([]),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffF44336),
            title: const Text("Demo ListView Builder"),
          ),
          body: Column(
            children: [
              RaisedButton(
                color: const Color(0xffF44336),
                child: const Text(
                  "Create Products",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  bloc.add(r.nextInt(4) + 2);
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<ProductBloc, List<Product>>(
                builder: (context, products) => Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (index == 0)
                              ? const SizedBox(width: 20)
                              : Container(),
                          ProductCard(
                            imageUrl: products[index].imageUrl,
                            name: products[index].name,
                            price: products[index].price.toString(),
                            onAddCartTap: () {},
                            onIncTap: () {},
                            onDecTap: () {},
                          ),
                          const SizedBox(width: 20),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
