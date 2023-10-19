import 'package:flutter/material.dart';
import 'package:registerr2/views/app/BottomNavigationBar/models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> cartItemsList = [];

  List<CartItem> _cartItems = [];
  List<CartItem> get cartItems => [..._cartItems];
  void notifyListeners() {
    notifyListeners();
  }

  // Здесь могут быть методы для управления корзиной, например, добавление и удаление элементов.
}
