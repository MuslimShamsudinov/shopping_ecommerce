// lib/widgets/product_item.dart

import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double width;
  final double height;

  ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl, required this.width, required this.height,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(12),
      child: GridTile(
        child: Image.asset(
          widget.imageUrl,
          fit: BoxFit.cover,
        width: widget.width,
        height: widget.height,
        ),
        footer: GridTileBar(

          backgroundColor: Colors.black87,
   
          title: Text(
            widget.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
