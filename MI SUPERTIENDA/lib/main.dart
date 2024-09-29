import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_page.dart'; 
import 'screens/categories_screen.dart';
import 'screens/offers_screen.dart';
import 'screens/supermarkets_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';

import 'screens2/supermercado1_screen.dart';
import 'screens2/supermercado2_screen.dart';
import 'screens2/supermercado3_screen.dart';
import 'screens2/supermercado4_screen.dart';
import 'screens2/supermercado5_screen.dart';
import 'screens2/supermercado6_screen.dart';
import 'screens2/supermercado7_screen.dart';
import 'screens2/supermercado8_screen.dart';
import 'screens2/supermercado9_screen.dart';
import 'screens2/supermercado10_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Super App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Definir la ruta inicial
      routes: {
        // Rutas existentes
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),

        // Nuevas rutas
        '/home': (context) => const HomePage(),
        '/categories': (context) => const CategoriesScreen(),
        '/offers': (context) => const OffersScreen(),
        '/supermarkets': (context) => const SupermarketsScreen(),
        '/cart': (context) => const CartScreen(),
        '/profile': (context) => const ProfileScreen(),

        // Rutas para los supermercados individuales
        '/supermercado1': (context) => const Supermercado1Screen(),
        '/supermercado2': (context) => const Supermercado2Screen(),
        '/supermercado3': (context) => const Supermercado3Screen(),
        '/supermercado4': (context) => const Supermercado4Screen(),
        '/supermercado5': (context) => const Supermercado5Screen(),
        '/supermercado6': (context) => const Supermercado6Screen(),
        '/supermercado7': (context) => const Supermercado7Screen(),
        '/supermercado8': (context) => const Supermercado8Screen(),
        '/supermercado9': (context) => const Supermercado9Screen(),
        '/supermercado10': (context) => const Supermercado10Screen(),
      },
    );
  }
}
