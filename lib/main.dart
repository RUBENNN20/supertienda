import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_page.dart'; 
import 'screens/categories_screen.dart';
import 'screens/offers_screen.dart';
import 'screens/supermarkets_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';
import 'providers/cart_provider.dart';

import 'screens2/supermercado1_screen.dart';
import 'screens2/supermercado2_screen.dart';
import 'screens2/supermercado3_screen.dart';
import 'screens2/supermercado4_screen.dart';
import 'screens2/supermercado5_screen.dart';
import 'screens2/supermercado6_screen.dart';
import 'screens2/supermercado7_screen.dart';
import 'screens2/supermercado8_screen.dart';
import 'screens2/supermercado9_screen.dart';
import 'screens2/supermercado10_screen.dart';
import 'screens2/supermercado11_screen.dart';
import 'screens2/supermercado12_screen.dart';

import 'screens3/tecnologia_exito.dart';
import 'screens3/deportes_exito.dart';
import 'screens3/moda_exito.dart';
import 'screens3/hogar_exito.dart';
import 'screens3/alimentos_exito.dart';
import 'screens3/juguetes_exito.dart';

import 'screens3/tecnologia_jumbo.dart';
import 'screens3/deportes_jumbo.dart';
import 'screens3/moda_jumbo.dart';
import 'screens3/hogar_jumbo.dart';
import 'screens3/alimentos_jumbo.dart';
import 'screens3/juguetes_jumbo.dart';

import 'screens3/tecnologia_carulla.dart';
import 'screens3/deportes_carulla.dart';
import 'screens3/moda_carulla.dart';
import 'screens3/hogar_carulla.dart';
import 'screens3/alimentos_carulla.dart';
import 'screens3/juguetes_carulla.dart';

import 'screens3/tecnologia_surtimax.dart';
import 'screens3/deportes_surtimax.dart';
import 'screens3/moda_surtimax.dart';
import 'screens3/hogar_surtimax.dart';
import 'screens3/alimentos_surtimax.dart';
import 'screens3/juguetes_surtimax.dart';

import 'screens3/tecnologia_ara.dart';
import 'screens3/deportes_ara.dart';
import 'screens3/moda_ara.dart';
import 'screens3/hogar_ara.dart';
import 'screens3/alimentos_ara.dart';
import 'screens3/juguetes_ara.dart';

import 'screens3/tecnologia_megatiendas.dart';
import 'screens3/deportes_megatiendas.dart';
import 'screens3/moda_megatiendas.dart';
import 'screens3/hogar_megatiendas.dart';
import 'screens3/alimentos_megatiendas.dart';
import 'screens3/juguetes_megatiendas.dart';

import 'screens3/tecnologia_alkosto.dart';
import 'screens3/deportes_alkosto.dart';
import 'screens3/moda_alkosto.dart';
import 'screens3/hogar_alkosto.dart';
import 'screens3/alimentos_alkosto.dart';
import 'screens3/juguetes_alkosto.dart';

import 'screens3/tecnologia_d1.dart';
import 'screens3/deportes_d1.dart';
import 'screens3/moda_d1.dart';
import 'screens3/hogar_d1.dart';
import 'screens3/alimentos_d1.dart';
import 'screens3/juguetes_d1.dart';

import 'screens3/tecnologia_metro.dart';
import 'screens3/deportes_metro.dart';
import 'screens3/moda_metro.dart';
import 'screens3/hogar_metro.dart';
import 'screens3/alimentos_metro.dart';
import 'screens3/juguetes_metro.dart';

import 'screens3/tecnologia_makro.dart';
import 'screens3/deportes_makro.dart';
import 'screens3/moda_makro.dart';
import 'screens3/hogar_makro.dart';
import 'screens3/alimentos_makro.dart';
import 'screens3/juguetes_makro.dart';

import 'screens3/tecnologia_olimpica.dart';
import 'screens3/deportes_olimpica.dart';
import 'screens3/moda_olimpica.dart';
import 'screens3/hogar_olimpica.dart';
import 'screens3/alimentos_olimpica.dart';
import 'screens3/juguetes_olimpica.dart';

import 'screens3/tecnologia_falabella.dart';
import 'screens3/deportes_falabella.dart';
import 'screens3/moda_falabella.dart';
import 'screens3/hogar_falabella.dart';
import 'screens3/alimentos_falabella.dart';
import 'screens3/juguetes_falabella.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        title: 'Mi SUPERTIENDA',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        initialRoute: '/', 
        routes: {
          '/': (context) => const HomeScreen(),
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen(),

          '/home': (context) => const HomePage(),
          '/categories': (context) => const CategoriesScreen(),
          '/offers': (context) => const OffersScreen(),
          '/supermarkets': (context) => const SupermarketsScreen(),
          '/cart': (context) => const CartScreen(),
          '/profile': (context) => const ProfileScreen(),

          '/supermercado1': (context) => const Supermercado1Screen(),
          '/supermercado2': (context) => const Supermercado2Screen(),
          '/supermercado3': (context) => const Supermercado3Screen(),
          '/supermercado4': (context) => const Supermercado4Screen(),
          '/supermercado5': (context) => const Supermercado5Screen(),
          '/supermercado6': (context) => const Supermercado6Screen(),
          '/supermercado7': (context) => const Supermercado7Screen(),
          '/supermercado8': (context) => const Supermercado8Screen(),
          '/supermercado9': (context) => const Supermercado9Screen(),
          '/supermercado10': (context) => const Supermercado10Screen(),
          '/supermercado11': (context) => const Supermercado11Screen(),
          '/supermercado12': (context) => const Supermercado12Screen(),

          '/tecnologia1': (context) => const TecnologiaexitoScreen(),
          '/deportes1': (context) => const DeportesexitoScreen(),
          '/moda1': (context) => const ModaexitoScreen(),
          '/hogar1': (context) => const HogarexitoScreen(),
          '/alimentos1': (context) => const AlimentosexitoScreen(),
          '/juguetes1': (context) => const JuguetesexitoScreen(),

          '/tecnologia2': (context) => const TecnologiajumboScreen(),
          '/deportes2': (context) => const DeportesjumboScreen(),
          '/moda2': (context) => const ModajumboScreen(),
          '/hogar2': (context) => const HogarjumboScreen(),
          '/alimentos2': (context) => const AlimentosjumboScreen(),
          '/juguetes2': (context) => const JuguetesjumboScreen(),

          '/tecnologia3': (context) => const TecnologiacarullaScreen(),
          '/deportes3': (context) => const DeportescarullaScreen(),
          '/moda3': (context) => const ModacarullaScreen(),
          '/hogar3': (context) => const HogarcarullaScreen(),
          '/alimentos3': (context) => const AlimentoscarullaScreen(),
          '/juguetes3': (context) => const JuguetescarullaScreen(),      

          '/tecnologia4': (context) => const TecnologiasurtimaxScreen(),
          '/deportes4': (context) => const DeportessurtimaxScreen(),
          '/moda4': (context) => const ModasurtimaxScreen(),
          '/hogar4': (context) => const HogarsurtimaxScreen(),
          '/alimentos4': (context) => const AlimentossurtimaxScreen(),
          '/juguetes4': (context) => const JuguetessurtimaxScreen(),

          '/tecnologia5': (context) => const TecnologiaaraScreen(),
          '/deportes5': (context) => const DeportesaraScreen(),
          '/moda5': (context) => const ModaaraScreen(),
          '/hogar5': (context) => const HogararaScreen(),
          '/alimentos5': (context) => const AlimentosaraScreen(),
          '/juguetes5': (context) => const JuguetesaraScreen(),

          '/tecnologia6': (context) => const TecnologiamegatiendasScreen(),
          '/deportes6': (context) => const DeportesmegatiendasScreen(),
          '/moda6': (context) => const ModamegatiendasScreen(),
          '/hogar6': (context) => const HogarmegatiendasScreen(),
          '/alimentos6': (context) => const AlimentosmegatiendasScreen(),
          '/juguetes6': (context) => const JuguetesmegatiendasScreen(),

          '/tecnologia7': (context) => const TecnologiaalkostoScreen(),
          '/deportes7': (context) => const DeportesalkostoScreen(),
          '/moda7': (context) => const ModaalkostoScreen(),
          '/hogar7': (context) => const HogaralkostoScreen(),
          '/alimentos7': (context) => const AlimentosalkostoScreen(),
          '/juguetes7': (context) => const JuguetesalkostoScreen(),

          '/tecnologia8': (context) => const Tecnologiad1Screen(),
          '/deportes8': (context) => const Deportesd1Screen(),
          '/moda8': (context) => const Modad1Screen(),
          '/hogar8': (context) => const Hogard1Screen(),
          '/alimentos8': (context) => const Alimentosd1Screen(),
          '/juguetes8': (context) => const Juguetesd1Screen(),

          '/tecnologia9': (context) => const TecnologiametroScreen(),
          '/deportes9': (context) => const DeportesmetroScreen(),
          '/moda9': (context) => const ModametroScreen(),
          '/hogar9': (context) => const HogarmetroScreen(),
          '/alimentos9': (context) => const AlimentosmetroScreen(),
          '/juguetes9': (context) => const JuguetesmetroScreen(),

          '/tecnologia10': (context) => const TecnologiamakroScreen(),
          '/deportes10': (context) => const DeportesmakroScreen(),
          '/moda10': (context) => const ModamakroScreen(),
          '/hogar10': (context) => const HogarmakroScreen(),
          '/alimentos10': (context) => const AlimentosmakroScreen(),
          '/juguetes10': (context) => const JuguetesmakroScreen(),

          '/tecnologia11': (context) => const TecnologiaolimpicaScreen(),
          '/deportes11': (context) => const DeportesolimpicaScreen(),
          '/moda11': (context) => const ModaolimpicaScreen(),
          '/hogar11': (context) => const HogarolimpicaScreen(),
          '/alimentos11': (context) => const AlimentosolimpicaScreen(),
          '/juguetes11': (context) => const JuguetesolimpicaScreen(),

          '/tecnologia12': (context) => const TecnologiafalabellaScreen(),
          '/deportes12': (context) => const DeportesfalabellaScreen(),
          '/moda12': (context) => const ModafalabellaScreen(),
          '/hogar12': (context) => const HogarfalabellaScreen(),
          '/alimentos12': (context) => const AlimentosfalabellaScreen(),
          '/juguetes12': (context) => const JuguetesfalabellaScreen(),
        },
      ),
    );
  }
}
