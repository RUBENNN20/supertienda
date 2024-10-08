// screens/cart_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Carrito de Compras'),
      ),
      body: cart.itemCount == 0
          ? const Center(
              child: Text(
                'Tu carrito está vacío',
                style: TextStyle(fontSize: 20),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.itemCount,
                    itemBuilder: (context, index) {
                      final product = cart.items[index];
                      return ListTile(
                        leading: Image.asset(
                          product.image,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.title),
                        subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            cart.removeItem(product);
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí puedes implementar la lógica para realizar la compra
                      // Por ahora, simplemente limpiamos el carrito y mostramos un mensaje
                      cart.clearCart();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Compra realizada con éxito'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: const Text('Realizar compra'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50), // Botón de altura fija
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
