import 'package:flutter_test/flutter_test.dart';
import 'package:basico/main.dart';

void main() {
  testWidgets('Marcar un modelo aumenta el total', (tester) async {
    // 1. Preparar: dibujar la app en un entorno de prueba
    await tester.pumpWidget(const VerificacionApp());
    expect(find.text('Modelos verificados: 0 de 4'), findsOneWidget);

    // 2. Actuar: marcar el primer modelo y redibujar
    await tester.tap(find.text('Modelo de casos de uso'));
    await tester.pump();

    // 3. Verificar: el total debe estar en 1
    expect(find.text('Modelos verificados: 1 de 4'), findsOneWidget);
    expect(find.text('Modelos verificados: 0 de 4'), findsNothing);
  });
}