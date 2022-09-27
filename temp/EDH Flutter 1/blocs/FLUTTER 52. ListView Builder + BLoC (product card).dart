import 'package:flutter_bloc/flutter_bloc.dart';

class Product {
  final String imageUrl;
  final String name;
  final int price;

  Product({this.imageUrl = "", this.name = "", this.price});
}

class ProductBloc extends Bloc<int, List<Product>> {
  ProductBloc(List<Product> initialState) : super(initialState);

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> product = [];
    for (var i = 0; i < event; i++) {
      product.add(
        Product(
            imageUrl:
                "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
            name: "Produk $i",
            price: (i + 1) * 5000),
      );
    }

    yield product;
  }
}
