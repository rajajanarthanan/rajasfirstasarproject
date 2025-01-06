import 'package:flutter_test/flutter_test.dart';
import 'package:rajas_first_asar_game/main_old.dart';

void main() {
  testWidgets('Basic smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Rajas First Asar Game'), findsOneWidget);   
  });
}
