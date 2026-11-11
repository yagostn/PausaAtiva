import 'package:flutter/material.dart';

import '../../../core/widgets/placeholder_screen.dart';
import '../domain/timer_status.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlaceholderScreen(
      titulo: 'Timer',
      detalhe: TimerStatus.pronto.rotulo,
    );
  }
}
