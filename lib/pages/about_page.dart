import 'package:flutter/material.dart';
import 'package:flutter_pac/pages/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9A1481), // Cor de fundo roxa
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            // Logo
            Image.asset(
              'images/logo_casa_izabel.png', // Caminho da imagem do logo
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),

            // Título "Quem somos?"
            const Text(
              'Quem somos?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Texto de descrição
            const Text(
              'A Casa Izabel é uma organização sem fins lucrativos que se dedica ao acolhimento, aconselhamento e apoio a mulheres vítimas de violência. A violência contra a mulher é uma questão grave e sistêmica, manifestando-se de diversas formas, como violência física, psicológica, sexual e financeira.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Texto "Juntos por uma causa maior"
            const Text(
              'Juntos por uma causa maior',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Ícone de causa
            Image.asset(
              'images/simbolo_casa_izabel.png', // Caminho da imagem do logo
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 30),

            // Texto "Nos acompanhe pelas redes sociais"
            const Text(
              'Nos acompanhe pelas redes sociais',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Redes sociais
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 30),
                SizedBox(width: 10),
                Text(
                  '@Casa_Izabel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Colors.white, size: 30),
                SizedBox(width: 10),
                Text(
                  'Casa Izabel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Texto "Venha nos visitar"
            const Text(
              'Venha nos visitar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Endereço
            const Text(
              'Jaraguá do Sul, SC\nRua sdadaas dasdasd, 111\n(47) 99999-9999',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
