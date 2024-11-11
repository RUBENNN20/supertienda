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
                image: AssetImage('assets/fondoweb.jpg'),
                fit: BoxFit.cover, // Ajustamos la imagen al tamaño de la pantalla
              ),
            ),
          ),
          // Rectángulo flotante con logo y botones
          Center(
            child: Container(
              width: 300, // Ajustamos el ancho del rectángulo
              height: 550, // Ajustamos el alto para acomodar el nuevo botón
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), // Fondo blanco semitransparente
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26, // Sombra
                    blurRadius: 15,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5), // Borde sutil
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo más grande
                  Image.asset(
                    'assets/logo.png',
                    width: 300, // Tamaño ajustado del logo
                  ),
                  const SizedBox(height: 30), // Espaciado mayor
                  // Botón de Iniciar Sesión
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40), // Aumentamos el tamaño del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(fontSize: 18), // Tamaño de texto
                    ),
                    child: const Text('Inicio de Sesión'),
                  ),
                  const SizedBox(height: 25), // Espaciado entre botones
                  // Botón de Registrarse
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Registrarme'),
                  ),
                  const SizedBox(height: 25),
                  // Nuevo botón "Continuar como invitado"
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    child: const Text('Continuar como Invitado'),
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
