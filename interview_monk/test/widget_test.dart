import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interview_monk/screens/welcome_screen.dart';

void main() {
  testWidgets('WelcomeScreen has a title and buttons', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: WelcomeScreen()));

    expect(find.text('Ace Your Next Interview with AI.'), findsOneWidget);
    expect(find.text('Get Started for Free'), findsOneWidget);

    final richText = find.descendant(
      of: find.byType(TextButton),
      matching: find.byType(RichText),
    );
    expect(richText, findsOneWidget);

    final textSpan = (tester.widget(richText) as RichText).text as TextSpan;
    expect(textSpan.toPlainText(), 'Already have an account? Log In');
  });
}
