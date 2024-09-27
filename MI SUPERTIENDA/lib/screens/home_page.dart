import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300], // Azul cielo
        title: Row(
          children: [
            // Botón que simula el logo y lleva a la página principal
            IconButton(
              icon: Image.asset(
                  'assets/logo.png'), // Asegúrate de que tienes el logo
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            const Spacer(),
            // Botones de las diferentes rutas
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/categories');
              },
              child: const Text('Categorías',
                  style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/offers');
              },
              child:
                  const Text('Ofertas', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/supermarkets');
              },
              child: const Text('Supermercados',
                  style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              child:
                  const Text('Carrito', style: TextStyle(color: Colors.white)),
            ),
            const Spacer(),
            // Botón para el perfil
            IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Bienvenido a la página principal',
            style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
