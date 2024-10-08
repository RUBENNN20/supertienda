import 'package:flutter/material.dart';


class Supermercado7Screen extends StatelessWidget {
  const Supermercado7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALKOSTO'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 7'),
      ),
    );
  }
}