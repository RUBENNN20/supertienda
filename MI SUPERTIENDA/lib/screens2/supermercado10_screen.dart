import 'package:flutter/material.dart';


class Supermercado10Screen extends StatelessWidget {
  const Supermercado10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiendas MAKRO'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 10'),
      ),
    );
  }
}