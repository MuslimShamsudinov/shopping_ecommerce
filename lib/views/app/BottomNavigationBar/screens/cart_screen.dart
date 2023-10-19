import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registerr2/views/app/BottomNavigationBar/models/cart_item.dart';
import 'package:registerr2/views/app/BottomNavigationBar/providers/cart_provider.dart';

class CartCreen extends StatefulWidget {
  const CartCreen({super.key});

  @override
  State<CartCreen> createState() => _CartCreenState();
}

class _CartCreenState extends State<CartCreen> {
  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<CartProvider>(context).cartItems;
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body:Column(children:<Widget> [
        Expanded(child: 
        ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (ctx,index){
            return CartItem(
              id: cartItems[index].id, 
              title:cartItems[index].title, 
              price: cartItems[index].price, 
              quantity: cartItems[index].quantity);
          } ,
        )
        ,)
      ],)
    );
  }
}