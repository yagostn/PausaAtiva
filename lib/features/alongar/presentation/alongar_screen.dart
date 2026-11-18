import 'package:flutter/material.dart';

import '../data/alongamentos_estaticos.dart';
import '../domain/alongamento.dart';

/// Aba "Alongar": guia com os movimentos feitos sentado.
class AlongarScreen extends StatelessWidget {
  const AlongarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).textTheme;
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text('Alongar', style: tema.titleLarge),
          const SizedBox(height: 8),
          Text(
            'Movimentos rápidos, sem sair da cadeira.',
            style: tema.bodyLarge,
          ),
          const SizedBox(height: 16),
          for (final alongamento in alongamentosEstaticos)
            _CartaoAlongamento(alongamento: alongamento),
        ],
      ),
    );
  }
}

class _CartaoAlongamento extends StatelessWidget {
  const _CartaoAlongamento({required this.alongamento});

  final Alongamento alongamento;

  /// O domínio só diz qual desenho usar; aqui decidimos como desenhar.
  static IconData _icone(Ilustracao ilustracao) => switch (ilustracao) {
    Ilustracao.pescoco => Icons.face_outlined,
    Ilustracao.ombros => Icons.accessibility_new,
    Ilustracao.coluna => Icons.airline_seat_recline_normal,
    Ilustracao.punhos => Icons.back_hand_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;
    final tema = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              _icone(alongamento.ilustracao),
              size: 40,
              color: cores.primary,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    alongamento.titulo,
                    style: tema.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('Foco: ${alongamento.foco}', style: tema.bodyMedium),
                  const SizedBox(height: 8),
                  Text(alongamento.descricao, style: tema.bodyLarge),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
