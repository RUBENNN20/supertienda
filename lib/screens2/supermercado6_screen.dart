import 'package:flutter/material.dart';


class Supermercado6Screen extends StatelessWidget {
  const Supermercado6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEGATIENDAS'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 6'),
      ),
    );
  }
}