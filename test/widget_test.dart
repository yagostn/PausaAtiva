import 'package:flutter_test/flutter_test.dart';
import 'package:pausa_ativa/app.dart';

void main() {
  testWidgets('abertura segue para as quatro abas com Timer pronto', (
    WidgetTester tester,
  ) async {
    final semantica = tester.ensureSemantics();
    await tester.pumpWidget(const PausaAtivaRoot());

    expect(find.text('PausaAtiva'), findsOneWidget);
    expect(find.text('Pausas da sua jornada'), findsOneWidget);

    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();

    for (final rotulo in ['Timer', 'Alongar', 'Lembretes', 'Relatório']) {
      expect(find.bySemanticsLabel(RegExp(rotulo)), findsWidgets);
    }
    expect(find.text('Pronto para iniciar'), findsOneWidget);

    await tester.tap(find.text('Alongar').last);
    await tester.pumpAndSettle();
    expect(find.text('Pronto para iniciar'), findsNothing);
    semantica.dispose();
  });
}
