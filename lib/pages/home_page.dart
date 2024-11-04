import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9A1481), // Cor de fundo
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context)
                    .openEndDrawer(); // Abre o endDrawer à direita
              },
            ),
          ),
        ],
      ),
      endDrawer: const CustomDrawer(), // endDrawer aparece à direita
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem do Logo
            Image.asset(
              'images/logo_casa_izabel.png', // Caminho da imagem
              width: 250, // Ajuste o tamanho da imagem conforme necessário
              height: 250,
            ),
            const SizedBox(height: 20),
            // Botão
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Cor de fundo do botão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                // Ação do botão
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  'Saiba se está sofrendo violência',
                  style: TextStyle(color: Color(0xFF9A1481), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFF7E6F3), // Fundo do drawer
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon:
                    const Icon(Icons.close, color: Color(0xFF9A1481), size: 30),
                onPressed: () {
                  Navigator.of(context).pop(); // Fecha o drawer
                },
              ),
            ),
            const SizedBox(height: 20),
            const DrawerItem(text: 'Conheça a Casa Izabel'),
            const Divider(
                color: Color(0xFF9A1481),
                thickness: 1,
                indent: 20,
                endIndent: 20),
            const DrawerItem(text: 'Veja ONGs próximas'),
            const Divider(
                color: Color(0xFF9A1481),
                thickness: 1,
                indent: 20,
                endIndent: 20),
            const DrawerItem(text: 'Cadastre uma ONG'),
            const Divider(
                color: Color(0xFF9A1481),
                thickness: 1,
                indent: 20,
                endIndent: 20),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;

  const DrawerItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF9A1481),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
