// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_first/data/products_data.dart';
import 'package:flutter_first/widgets/product_card.dart';

void main() {
  testWidgets('product card renders the configured product image', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 160,
            height: 260,
            child: ProductCard(product: products[6]),
          ),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
  });
}
