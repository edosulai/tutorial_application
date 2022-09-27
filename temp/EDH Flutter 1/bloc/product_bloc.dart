import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tutorial_application/models/FLUTTER%2072.%20Bloc%20Test%20Bagian%202%20(product).dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(ProductState initialState) : super(initialState);

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is AddProduct) {
      if (event is ProductInitial) {
        yield ProductLoaded([event.product]);
      } else {
        yield ProductLoaded(
          (state as ProductLoaded).products + [event.product],
        );
      }
    } else {
      if (state is ProductInitial) {
        yield state;
      } else {
        yield ProductLoaded(
          (state as ProductLoaded)
              .products
              .where((item) => item != event.product)
              .toList(),
        );
      }
    }
  }
}
