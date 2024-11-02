import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                fit: BoxFit
                    .cover, // Ajustamos la imagen al tamaño de la pantalla
              ),
            ),
          ),
          // Rectángulo flotante con campos de login y botón
          Center(
            child: Container(
              width: 300, // Ajustamos el ancho del rectángulo
              height: 400, // Hacemos el rectángulo más largo
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white, // Fondo blanco sólido
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
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
                  const Text(
                    'Inicio',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Campo de correo electrónico
                  SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Correo electrónico',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Campo de contraseña
                  SizedBox(
                    width: 250,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Botón de ingresar
                  ElevatedButton(
                    onPressed: () {
                      // Navega a la página principal
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40), // Tamaño del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18, // Tamaño de texto del botón
                      ),
                    ),
                    child: const Text('Ingresar'),
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
