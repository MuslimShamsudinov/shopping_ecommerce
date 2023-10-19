import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registerr2/views/app/BottomNavigationBar/providers/cart_provider.dart';
import 'package:registerr2/views/app/auth/auth.dart';
import 'package:registerr2/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(
            create: (context) => CartProvider()),
        // Другие провайдеры, если они есть
      ],
      child: (Register()), // MyApp - это ваш корневой виджет
    ),
  );
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
    );
  }
}
