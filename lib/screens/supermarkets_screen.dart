import 'package:flutter/material.dart';

class SupermarketsScreen extends StatelessWidget {
  const SupermarketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> supermercados = [
      {
        'nombre': 'Almacenes EXITO',
        'imagen': 'assets/images/supermercado1.png',
        'ruta': '/supermercado1',
      },
      {
        'nombre': 'Almacenes JUMBO',
        'imagen': 'assets/images/supermercado2.png',
        'ruta': '/supermercado2',
      },
      {
        'nombre': 'CARULLA',
        'imagen': 'assets/images/supermercado3.png',
        'ruta': '/supermercado3',
      },
      {
        'nombre': 'SURTIMAX',
        'imagen': 'assets/images/supermercado4.png',
        'ruta': '/supermercado4',
      },
      {
        'nombre': 'Tiendas ARA',
        'imagen': 'assets/images/supermercado5.png',
        'ruta': '/supermercado5',
      },
      {
        'nombre': 'MEGATIENDAS',
        'imagen': 'assets/images/supermercado6.png',
        'ruta': '/supermercado6',
      },
      {
        'nombre': 'ALKOSTO',
        'imagen': 'assets/images/supermercado7.png',
        'ruta': '/supermercado7',
      },
      {
        'nombre': 'Tiendas D1',
        'imagen': 'assets/images/supermercado8.png',
        'ruta': '/supermercado8',
      },
      {
        'nombre': 'Tiendas METRO',
        'imagen': 'assets/images/supermercado9.png',
        'ruta': '/supermercado9',
      },
      {
        'nombre': 'Tiendas MAKRO',
        'imagen': 'assets/images/supermercado10.png',
        'ruta': '/supermercado10',
      },
      {
        'nombre': 'OLIMPICA',
        'imagen': 'assets/images/supermercado11.png',
        'ruta': '/supermercado11',
      },
      {
        'nombre': 'FALABELLA',
        'imagen': 'assets/images/supermercado12.png',
        'ruta': '/supermercado12',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: const Text('Supermercados'),
      ),
      body: Container(
        color: Colors.blueAccent, // Fondo azul
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: supermercados.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Número de columnas
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, index) {
            final supermercado = supermercados[index];
            return GestureDetector(
              onTap: () {
                // Navegar usando rutas nombradas
                Navigator.pushNamed(context, supermercado['ruta']!);
              },
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          supermercado['imagen']!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      supermercado['nombre']!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
