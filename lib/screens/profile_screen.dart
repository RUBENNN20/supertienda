import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Perfil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Acción al presionar el ícono de editar
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Encabezado de perfil con fondo azul
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // Foto de perfil
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.jpg'), // Ruta de la imagen de perfil
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'User',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'User@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Insignias
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.verified, color: Colors.yellow, size: 20),
                      SizedBox(width: 5),
                      Icon(Icons.star, color: Colors.purple, size: 30),
                      Icon(Icons.shield, color: Colors.blueAccent, size: 30),
                      Icon(Icons.emoji_events, color: Colors.red, size: 30),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Opciones de configuración
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blue),
              title: const Text("Configuraciones de perfil"),
              subtitle: const Text("Actualiza configuraciones del perfil"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para configuración de perfil
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock, color: Colors.blue),
              title: const Text("Privacidad"),
              subtitle: const Text("Cambiar contraseña"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para privacidad
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.blue),
              title: const Text("Notificaciones"),
              subtitle: const Text("Cambiar configuracion de notificaciones"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Acción para notificaciones
              },
            ),
          ],
        ),
      ),
      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Gastos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 30),
            label: "Añadir",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Cartera",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        currentIndex: 4, // El índice de "Perfil" es 4
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home'); // Ruta para "Inicio"
              break;
            case 1:
              Navigator.pushNamed(context, '/gastos'); // Ruta para "Gastos"
              break;
            case 2:
              Navigator.pushNamed(context, '/añadir'); // Ruta para "Añadir"
              break;
            case 3:
              Navigator.pushNamed(context, '/cartera'); // Ruta para "Cartera"
              break;
            case 4:
              Navigator.pushNamed(context, '/perfil'); // Ruta para "Perfil"
              break;
          }
        },
      )
    );
  }
}
