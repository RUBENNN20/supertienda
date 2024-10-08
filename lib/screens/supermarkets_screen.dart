import 'package:flutter/material.dart';

class SupermarketsScreen extends StatelessWidget {
  const SupermarketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Supermercados'),
      ),
      body: Container(
        color: Colors.blueAccent, // Fondo azul
        child: const Center(child: Text('Página de Supermercados')),
      ),
    );
  }
}
