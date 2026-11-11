import 'package:flutter/material.dart';

import '../features/alongar/presentation/alongar_screen.dart';
import '../features/lembretes/presentation/lembretes_screen.dart';
import '../features/relatorio/presentation/relatorio_screen.dart';
import '../features/timer/presentation/timer_screen.dart';

class ShellScreen extends StatefulWidget {
  const ShellScreen({super.key});

  @override
  State<ShellScreen> createState() => _ShellScreenState();
}

class _ShellScreenState extends State<ShellScreen> {
  static const _larguraLateral = 600.0;

  int _indice = 0;

  static const _telas = [
    TimerScreen(),
    AlongarScreen(),
    LembretesScreen(),
    RelatorioScreen(),
  ];

  static const _destinos = [
    (icone: Icons.timer_outlined, rotulo: 'Timer'),
    (icone: Icons.accessibility_new, rotulo: 'Alongar'),
    (icone: Icons.notifications_none, rotulo: 'Lembretes'),
    (icone: Icons.insights_outlined, rotulo: 'Relatório'),
  ];

  void _selecionar(int i) => setState(() => _indice = i);

  @override
  Widget build(BuildContext context) {
    final largo = MediaQuery.sizeOf(context).width >= _larguraLateral;
    return Scaffold(
      body: Row(
        children: [
          if (largo)
            NavigationRail(
              selectedIndex: _indice,
              onDestinationSelected: _selecionar,
              labelType: NavigationRailLabelType.all,
              destinations: [
                for (final d in _destinos)
                  NavigationRailDestination(
                    icon: Icon(d.icone),
                    label: Text(d.rotulo),
                  ),
              ],
            ),
          Expanded(child: _telas[_indice]),
        ],
      ),
      bottomNavigationBar: largo
          ? null
          : NavigationBar(
              height: 72,
              selectedIndex: _indice,
              onDestinationSelected: _selecionar,
              destinations: [
                for (final d in _destinos)
                  NavigationDestination(
                    icon: Icon(d.icone, size: 28),
                    label: d.rotulo,
                  ),
              ],
            ),
    );
  }
}
