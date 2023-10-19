import 'dart:async';

class ProductService {
  // Ваш метод для загрузки продуктов, замените этот пример на вашу реальную логику
  Future<List<Product>> loadProducts() async {
    await Future.delayed(Duration(seconds: 2)); // Пример задержки

    final List<Product> products = [
      Product(id: 1, name: 'Продукт 1', price: 10.99),
      Product(id: 2, name: 'Продукт 2', price: 20.49),
      Product(id: 3, name: 'Продукт 3', price: 5.99),
      // Добавьте больше продуктов по мере необходимости
    ];

    return products;
  }
}

class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });
}
