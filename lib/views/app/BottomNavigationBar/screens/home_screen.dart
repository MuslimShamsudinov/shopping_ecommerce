import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registerr2/views/app/BottomNavigationBar/constants/colors.dart';
import 'package:registerr2/views/app/BottomNavigationBar/data/dummy_data.dart';
import 'package:registerr2/views/app/BottomNavigationBar/widgets/action.dart';
import 'package:registerr2/views/app/BottomNavigationBar/widgets/brand_item.dart';
import 'package:registerr2/views/app/BottomNavigationBar/widgets/product_item.dart';
import 'package:registerr2/views/bloc/product_service.dart';
import 'package:registerr2/views/bloc/products_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final productService =
            ProductService(); // Создайте экземпляр вашего сервиса
        final productsBloc = ProductsBloc(
            productService); // Создайте экземпляр BLoC с передачей аргумента
        return productsBloc;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Icon(
              Icons.sort_rounded,
              color: appColor.inactiveColor,
              size: 30,
            ),
          ),
          backgroundColor: appColor.activecolor,
          elevation: 0,
          title: Text(
            'Online shop',
            style: TextStyle(fontSize: 25, color: appColor.inactiveColor),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: appColor.inactiveColor,
                ))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Рекламные бренды одежды и аксессуары
            Container(
              height: 150.0,
              margin: EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BrandItem(
                    imageUrl: 'assets/images/a.jpg',
                    title: 'Бренд 1',
                    width: 120.0,
                    height: 120.0,
                  ),
                  BrandItem(
                    imageUrl: 'assets/images/b.jpg',
                    title: 'Бренд 2',
                    width: 120.0,
                    height: 120.0,
                  ),
                  BrandItem(
                    imageUrl: 'assets/images/c.jpeg',
                    title: 'Бренд 3',
                    width: 120.0,
                    height: 120.0,
                  ),
                  // Добавьте другие бренды одежды по аналогии
                  ActionItem(
                    imageUrl: 'assets/images/d.jpg',
                    title: 'Акция 1',
                    width: 120.0,
                    height: 120.0,
                  ),
                  ActionItem(
                    imageUrl: 'assets/images/e.jpeg',
                    title: 'Акция 2',
                    width: 120.0,
                    height: 120.0,
                  ),
                  ActionItem(
                    imageUrl: 'assets/images/f.jpeg',
                    title: 'Акция 3',
                    width: 120.0,
                    height: 120.0,
                  ),
                  // Добавьте другие аксессуары по аналогии
                ],
              ),
            ),
            // Продукты магазина
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: DUMMY_PRODUCTS.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (ctx, index) {
                  return ProductItem(
                    id: DUMMY_PRODUCTS[index].id,
                    title: DUMMY_PRODUCTS[index].title,
                    imageUrl: DUMMY_PRODUCTS[index].imageUrl,
                    width: 150.0,
                    height: 200.0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
