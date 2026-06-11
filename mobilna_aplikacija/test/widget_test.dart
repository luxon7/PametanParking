// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobilna_aplikacija/main.dart';

// PAZI: Zameni "mobilna_aplikacija" sa nazivom tvog projekta iz pubspec.yaml

void main() {
  testWidgets('Aplikacija se pokreće i prikazuje Login ekran', (WidgetTester tester) async {
    // 1. Build-ujemo našu aplikaciju
    await tester.pumpWidget(const PametanParkingApp());

    // 2. Proveravamo da li postoji tekst "Prijava u sistem" koji je naslov na Login ekranu
    expect(find.text('Prijava u sistem'), findsOneWidget);
    
    // 3. Proveravamo da li postoji ikonica parkinga
    expect(find.byIcon(Icons.local_parking), findsOneWidget);
  });
}
