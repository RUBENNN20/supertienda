import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items => _items;

  CartProvider() {
    _loadCart(); // Cargar los productos del carrito al iniciar
  }

  void _saveCart() async {
    // Convertir la lista de productos a JSON y guardarla en `shared_preferences`
    final prefs = await SharedPreferences.getInstance();
    List<String> cartList = _items.map((item) => json.encode(item.toJson())).toList();
    prefs.setStringList('cart', cartList);
  }

  void _loadCart() async {
    // Cargar los productos del carrito desde `shared_preferences`
    final prefs = await SharedPreferences.getInstance();
    List<String>? cartList = prefs.getStringList('cart');

    if (cartList != null) {
      _items = cartList.map((item) => Product.fromJson(json.decode(item))).toList();
      notifyListeners();
    }
  }

  void addItem(Product product) {
    _items.add(product);
    _saveCart(); // Guardar el carrito actualizado
    notifyListeners();
  }

  void removeItem(Product product) {
    _items.remove(product);
    _saveCart(); // Guardar el carrito actualizado
    notifyListeners();
  }

  double get totalPrice {
    return _items.fold(0.0, (sum, item) => sum + item.price);
  }

  int get itemCount => _items.length;

  void clearCart() {
    _items.clear();
    _saveCart(); // Guardar el carrito vacío
    notifyListeners();
  }
}
