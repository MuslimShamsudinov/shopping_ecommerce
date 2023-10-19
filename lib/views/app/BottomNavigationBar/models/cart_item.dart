import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
 CartItem({super.key, required this.id, required this.title, required this.price, required this.quantity});
  final String id;
  final String title;
  final double price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.all(10),
      child:ListTile(
        leading:CircleAvatar(),
        title: Text(title),
        subtitle: Text('Itogo:${(price * quantity).toStringAsFixed(1)} dollar'),
        trailing: Text('$quantity x'),
      )
    );
  }
}