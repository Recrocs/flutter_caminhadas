
import 'package:flutter/material.dart';

class MeuInfoWidget extends StatelessWidget {
  final double distancia;
  final int quantidade;
  final double calorias;

  const MeuInfoWidget({
    super.key,
    required this.distancia,
    required this.quantidade,
    required this.calorias,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Meu desempenho',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Text('Distância total: ${distancia.toStringAsFixed(1)} km'),

            Text('Caminhadas: $quantidade'),

            Text('Calorias: ${calorias.toStringAsFixed(0)} kcal'),
          ],
        ),
      ),
    );
  }
}
