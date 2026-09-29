import 'package:flutter_test/flutter_test.dart';
import 'package:kuis_124240197/main.dart';

void main() {
  testWidgets('App renders Login Page successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
    expect(find.text('Login Page'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
