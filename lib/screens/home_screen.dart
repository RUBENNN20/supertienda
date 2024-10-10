import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fondoweb.png'),
                fit: BoxFit
                    .cover, // Ajustamos la imagen al tamaño de la pantalla
              ),
            ),
          ),
          // Rectángulo flotante con logo y botones
          Center(
            child: Container(
              width: 300, // Ajustamos el ancho del rectángulo
              height: 500, // Hacemos el rectángulo más largo
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color:
                    Colors.white.withOpacity(0.9), // Fondo blanco con opacidad
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Sombra
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo más grande
                  Image.asset(
                    'assets/logo.png',
                    width: 400, // Aumentamos el tamaño del logo
                  ),
                  const SizedBox(height: 40), // Espaciado mayor
                  // Botón de Iniciar Sesión más grande
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40), // Aumentamos el tamaño del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20), // Tamaño de texto más grande
                    ),
                    child: const Text('Inicio de Sesión'),
                  ),
                  const SizedBox(height: 30), // Espaciado mayor entre botones
                  // Botón de Registrarse más grande
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40), // Aumentamos el tamaño del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20), // Tamaño de texto más grande
                    ),
                    child: const Text('Registrarme'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
