import 'package:flutter/material.dart';

const corPrimaria = Color(0xFF176B73);
const corPrimariaEscura = Color(0xFF0F4C5C);
const corSucesso = Color(0xFF42A579);
const corFundo = Color(0xFFF5F7F8);
const corTexto = Color(0xFF17252A);

ThemeData appTheme() {
  final esquema =
      ColorScheme.fromSeed(
        seedColor: corPrimaria,
        brightness: Brightness.light,
      ).copyWith(
        primary: corPrimaria,
        onPrimary: Colors.white,
        secondary: corSucesso,
        surface: corFundo,
        onSurface: corTexto,
      );
  return ThemeData(
    colorScheme: esquema,
    useMaterial3: true,
    scaffoldBackgroundColor: corFundo,
    materialTapTargetSize: MaterialTapTargetSize.padded,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: corPrimariaEscura,
      ),
      bodyLarge: TextStyle(fontSize: 18, height: 1.4, color: corTexto),
    ),
  );
}
