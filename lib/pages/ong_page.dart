import 'package:flutter/material.dart';

class OngsScreen extends StatelessWidget {
  const OngsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7E6F3), // Cor de fundo clara
      appBar: AppBar(
        backgroundColor: const Color(0xFF9A1481), // Fundo roxo da AppBar
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'images/logo_casa_izabel.png', // Caminho do logo
          height: 60,
        ),
        leading: IconButton(
          icon: const Icon(Icons.add, color: Colors.white),
          onPressed: () {
            // Ação para adicionar uma nova ONG
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Ação para abrir o menu
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildOngTile(
            context,
            "ONG Acolher",
            "Rua Exemplo, 123 - Centro, Cidade - Estado, CEP 12345-678",
            "images/ong_policia.png",
          ),
          const SizedBox(height: 16),
          _buildOngTile(
            context,
            "Instituto Amor",
            "Av. Solidariedade, 456 - Bairro, Cidade - Estado, CEP 98765-432",
            "images/ong_policia.png",
          ),
          const SizedBox(height: 16),
          _buildOngTile(
            context,
            "Projeto Esperança",
            "Rua da Paz, 789 - Zona Norte, Cidade - Estado, CEP 45678-901",
            "images/ong_policia.png",
          ),
          // Adicione mais tiles de ONGs conforme necessário
        ],
      ),
    );
  }

  Widget _buildOngTile(
      BuildContext context, String nome, String endereco, String logoPath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              logoPath,
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_pin,
                          size: 16, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          endereco,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.grey),
              onPressed: () {
                _showConfirmationDialog(context, nome);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, String nome) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          title: const Column(
            children: [
              Icon(
                Icons.warning,
                color: Colors.red,
                size: 48,
              ),
              SizedBox(height: 16),
              Text(
                'Tem certeza que deseja excluir a ONG?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Fecha o diálogo sem excluir
                  },
                  child: const Text(
                    'NÃO',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10), // Espaço entre os botões
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Fecha o diálogo
                    // Aqui você pode adicionar a lógica para remover a ONG da lista
                    // Por exemplo, usando setState para atualizar a lista de ONGs
                  },
                  child: const Text(
                    'SIM',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
