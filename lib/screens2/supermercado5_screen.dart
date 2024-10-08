import 'package:flutter/material.dart';


class Supermercado5Screen extends StatelessWidget {
  const Supermercado5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiendas ARA'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 5'),
      ),
    );
  }
}