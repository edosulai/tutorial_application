
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_application/providers/FLUTTER%2049.%20Product%20Card%20(BoxShadow,%20RoundedRectangleBorder)%20(product%20state).dart';
import 'package:tutorial_application/widgets/FLUTTER%2049.%20Product%20Card%20(BoxShadow,%20RoundedRectangleBorder)%20(product%20card).dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: firstColor),
        body: ChangeNotifierProvider<ProductState>(
          create: (context) => ProductState(),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProductCard(
                  imageUrl:
                      "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
                  name: "Buah-buahan Mix 1kg",
                  price: "Rp. 25.000",
                  quantity: productState.quantity,
                  notification:
                      (productState.quantity > 5) ? "Diskon 10%" : null,
                  onAddCartTap: () {},
                  onIncTap: () {
                    productState.quantity++;
                  },
                  onDecTap: () {
                    productState.quantity--;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
