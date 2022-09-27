import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:tutorial_application/FLUTTER%2072.%20Bloc%20Test%20Bagian%202/bloc/product_bloc.dart';
import 'package:tutorial_application/models/FLUTTER%2072.%20Bloc%20Test%20Bagian%202%20(product).dart';

void main() {
  group("Product Bloc Test", () {
    blocTest(
      "Inisial Value",
      build: () => ProductBloc(ProductInitial()),
      expect: () => [ProductInitial()],
    );

    blocTest(
      "Add Product",
      build: () => ProductBloc(ProductInitial()),
      expect: () => [
        ProductInitial(),
        const ProductLoaded([Product("Apel", 2000)])
      ],
      act: (bloc) async {
        bloc.add(const AddProduct(Product("Apel", 2000)));
      },
    );

    blocTest(
      "Add 2 Products",
      build: () => ProductBloc(ProductInitial()),
      expect: () => [
        ProductInitial(),
        const ProductLoaded([Product("Apel", 2000)]),
        const ProductLoaded([Product("Apel", 2000), Product("Durian", 100000)]),
      ],
      act: (bloc) async {
        bloc.add(const AddProduct(Product("Apel", 2000)));
        bloc.add(const AddProduct(Product("Durian", 100000)));
      },
    );

    blocTest(
      "Remove Products",
      build: () => ProductBloc(ProductInitial()),
      expect: () => [
        ProductInitial(),
      ],
      act: (bloc) async {
        bloc.add(const RemoveProduct(Product("Apel", 2000)));
      },
    );

    blocTest(
      "Remove Products (Product Loaded)",
      build: () => ProductBloc(ProductInitial()),
      expect: () => [
        ProductInitial(),
        const ProductLoaded([Product("Apel", 2000)]),
        const ProductLoaded([]),
      ],
      act: (bloc) async {
        bloc.add(const AddProduct(Product("Apel", 2000)));
        bloc.add(const RemoveProduct(Product("Apel", 2000)));
      },
    );
  });
}
