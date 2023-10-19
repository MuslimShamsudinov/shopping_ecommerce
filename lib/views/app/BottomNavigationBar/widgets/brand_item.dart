import 'package:flutter/widgets.dart';
import 'package:registerr2/views/app/BottomNavigationBar/constants/colors.dart';

class BrandItem extends StatefulWidget {
  final String imageUrl;
  final String title;
  final double width;
  final double height;

  BrandItem({
    required this.imageUrl,
    required this.title,
    required this.width,
    required this.height,
  });

  @override
  State<BrandItem> createState() => _BrandItemState();
}

class _BrandItemState extends State<BrandItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(widget.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          widget.title,
          style: TextStyle(
            color: appColor.activecolor,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}