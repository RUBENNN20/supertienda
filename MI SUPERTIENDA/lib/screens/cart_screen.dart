import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Carrito de Compras'),
      ),
      body: Container(
        color: Colors.redAccent, // Fondo rojo
        child: const Center(child: Text('Página del Carrito')),
      ),
    );
  }
}
