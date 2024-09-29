import 'package:flutter/material.dart';


class Supermercado9Screen extends StatelessWidget {
  const Supermercado9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiendas METRO'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 9'),
      ),
    );
  }
}