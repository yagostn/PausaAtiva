import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'shell/splash_screen.dart';

class PausaAtivaRoot extends StatelessWidget {
  const PausaAtivaRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: PausaAtivaApp());
  }
}

class PausaAtivaApp extends StatelessWidget {
  const PausaAtivaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PausaAtiva',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const SplashScreen(),
    );
  }
}
