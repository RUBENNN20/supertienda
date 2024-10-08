import 'package:flutter/material.dart';


class Supermercado2Screen extends StatelessWidget {
  const Supermercado2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Almacenes JUMBO'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 2'),
      ),
    );
  }
}