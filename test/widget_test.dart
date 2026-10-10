import 'package:flutter_test/flutter_test.dart';

import 'package:pulse_bt/main.dart';

void main() {
  testWidgets('Pulse BT placeholder screen renders core branding', (tester) async {
    await tester.pumpWidget(const PulseBtApp());

    expect(find.text('Pulse BT'), findsOneWidget);
    expect(find.text('Disconnected'), findsOneWidget);
    expect(
      find.textContaining('Bluetooth media integration is being configured'),
      findsOneWidget,
    );
  });
}
