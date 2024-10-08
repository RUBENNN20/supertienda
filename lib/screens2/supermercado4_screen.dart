import 'package:flutter/material.dart';


class Supermercado4Screen extends StatelessWidget {
  const Supermercado4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SURTIMAX'),
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Center(
        child: Text('Bienvenido a Supermercado 4'),
      ),
    );
  }
}