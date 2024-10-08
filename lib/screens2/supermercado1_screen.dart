import 'package:flutter/material.dart';


class Supermercado1Screen extends StatelessWidget {
  const Supermercado1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Almacenes EXITO'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 10'),
      ),
    );
  }
}