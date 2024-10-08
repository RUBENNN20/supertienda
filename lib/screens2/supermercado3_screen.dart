import 'package:flutter/material.dart';


class Supermercado3Screen extends StatelessWidget {
  const Supermercado3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CARULLA'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 3'),
      ),
    );
  }
}