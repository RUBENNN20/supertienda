import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Ofertas'),
      ),
      body: Container(
        color: Colors.greenAccent, // Fondo verde
        child: const Center(child: Text('Página de Ofertas')),
      ),
    );
  }
}
