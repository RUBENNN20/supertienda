import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Categorías'),
      ),
      body: Container(
        color: Colors.orangeAccent, // Fondo naranja
        child: const Center(child: Text('Página de Categorías')),
      ),
    );
  }
}
