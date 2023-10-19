// lib/bloc/products_bloc.dart

import 'package:bloc/bloc.dart';

import 'product_service.dart';

// События
abstract class ProductsEvent {}

class LoadProductsEvent extends ProductsEvent {}

// Состояния
abstract class ProductsState {}

class LoadingState extends ProductsState {}

class LoadedState extends ProductsState {
  final List<Product> products; // Подставьте свой тип продукта

  LoadedState(this.products);
}

class ErrorState extends ProductsState {
  final String error;

  ErrorState(this.error);
}

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductService productService;
  ProductsBloc(this.productService) : super(LoadingState());

  @override
  ProductsState get initialState => LoadingState();

  @override
  Stream<ProductsState> mapEventToState(ProductsEvent event) async* {
    if (event is LoadProductsEvent) {
      try {
        // Здесь загрузите данные о продуктах из вашего провайдера или репозитория
        final products = await productService
            .loadProducts(); // Подставьте вашу логику загрузки данных
        yield LoadedState(products);
      } catch (error) {
        yield ErrorState(error.toString());
      }
    }
  }
}
