import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  void _showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFF7E6F3), // Fundo claro do diálogo
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.all(20.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Ícone de informação
              const Icon(
                Icons.info,
                color: Color(0xFF9A1481),
                size: 50,
              ),
              const SizedBox(height: 20),

              // Texto de confirmação
              const Text(
                'Tem certeza que quer sair do quiz?',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF9A1481),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Botões "SIM" e "NÃO"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9A1481), // Fundo roxo
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Fechar o diálogo
                      Navigator.of(context)
                          .pop(); // Voltar para a tela anterior
                    },
                    child: const Text(
                      'SIM',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9A1481), // Fundo roxo
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Apenas fechar o diálogo
                    },
                    child: const Text(
                      'NÃO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9A1481), // Fundo roxo
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white, size: 30),
            onPressed: () {
              _showExitConfirmationDialog(
                  context); // Mostrar diálogo de confirmação
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'images/logo_casa_izabel.png', // Caminho do logo
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 40),

              // Pergunta
              const Text(
                'pergunta', // Substitua pelo texto da pergunta
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Contador de perguntas
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '01/20', // Exemplo de contador
                  style: TextStyle(
                    color: Color(0xFF9A1481),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 60),

              // Botão "SIM"
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF7E6F3), // Fundo claro
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                ),
                onPressed: () {
                  // Ação do botão "SIM"
                },
                child: const Text(
                  'SIM',
                  style: TextStyle(
                    color: Color(0xFF9A1481),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botão "NÃO"
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF7E6F3), // Fundo claro
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                ),
                onPressed: () {
                  // Ação do botão "NÃO"
                },
                child: const Text(
                  'NÃO',
                  style: TextStyle(
                    color: Color(0xFF9A1481),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
