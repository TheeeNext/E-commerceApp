import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:minimal_ecommerce/main.dart';

void main() {
  testWidgets('App loads correctly and shows expected UI', (WidgetTester tester) async {
    // Construa o aplicativo e dispare um frame.
    await tester.pumpWidget(MinimalECommerceApp());

    // Verifique se o título do AppBar é exibido corretamente.
    expect(find.text('Minimal E-Commerce'), findsOneWidget);

    // Verifique se o grid de produtos é exibido.
    expect(find.byType(GridView), findsOneWidget);

    // Verifique se a fonte padrão (Poppins) está funcionando.
    final textWidget = find.text('Minimal E-Commerce').evaluate().single.widget as Text;
    expect(textWidget.style?.fontFamily, equals('Poppins'));
  });
}
