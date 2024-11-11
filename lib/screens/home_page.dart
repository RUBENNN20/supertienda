import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      menuScreen: const MenuScreen(),
      mainScreen: const MainScreen(),
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * 0.25, // Ajuste a 25% del ancho de la pantalla
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Botón de cerrar en la esquina superior derecha
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {
                ZoomDrawer.of(context)?.close();
              },
            ),
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 20,
                  height: 50,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Mi SUPERTIENDA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.local_offer, color: Colors.white),
            title: const Text('Ofertas', style: TextStyle(color: Colors.white)),
            onTap: () {
              ZoomDrawer.of(context)?.close();
              Navigator.pushNamed(context, '/offers');
            },
          ),
          ListTile(
            leading: const Icon(Icons.store, color: Colors.white),
            title: const Text('Supermercados', style: TextStyle(color: Colors.white)),
            onTap: () {
              ZoomDrawer.of(context)?.close();
              Navigator.pushNamed(context, '/supermarkets');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart, color: Colors.white),
            title: const Text('Carrito', style: TextStyle(color: Colors.white)),
            onTap: () {
              ZoomDrawer.of(context)?.close();
              Navigator.pushNamed(context, '/cart');
            },
          ),
          const Divider(color: Colors.white70),
          ListTile(
            leading: const Icon(Icons.account_circle, color: Colors.white),
            title: const Text('Perfil', style: TextStyle(color: Colors.white)),
            onTap: () {
              ZoomDrawer.of(context)?.close();
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white),
            title: const Text('cerrar sesion', style: TextStyle(color: Colors.white)),
            onTap: () {
              ZoomDrawer.of(context)?.close();
              Navigator.pushNamed(context, '/login');
            }
          )
        ],
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Para los indicadores del carrusel
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ZoomDrawer.of(context)?.toggle();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset('assets/logo.png'),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Carrusel de imágenes con margen
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider(
              items: [
                // Primer imagen
                Image.asset('assets/productos/producto1.jpg'),
                Image.asset('assets/productos/producto2.jpg'),
                Image.asset('assets/productos/producto3.jpg'),
                Image.asset('assets/productos/producto4.jpg'),
                Image.asset('assets/productos/producto5.jpg'),
                Image.asset('assets/productos/producto6.jpg'),
              ],
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true, // Para hacer el carrusel automático
                enlargeCenterPage: true, // Para dar el efecto de centro grande
                enableInfiniteScroll: true, // Para que el carrusel sea infinito
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index; // Actualiza el índice del carrusel
                  });
                },
              ),
            ),
          ),
          // Indicadores de imagen (puntos)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 6; i++) // Ajusta la cantidad según el número de imágenes
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == i ? Colors.blue : Colors.grey,
                  ),
                ),
            ],
          ),
          // Texto adicional (en la franja blanca)
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
