import 'package:flutter/material.dart';


class Supermercado8Screen extends StatelessWidget {
  const Supermercado8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiendas D1'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 8'),
      ),
    );
  }
}