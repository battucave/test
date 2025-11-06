import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_monk/bloc/auth_bloc.dart';
import 'package:interview_monk/screens/answer_settings_screen.dart';
import 'package:interview_monk/screens/interview_screen.dart';
import 'package:interview_monk/screens/listening_screen.dart';
import 'package:interview_monk/screens/login_screen.dart';
import 'package:interview_monk/screens/main_shell.dart';
import 'package:interview_monk/screens/personalization_screen.dart';
import 'package:interview_monk/screens/pricing_screen.dart';
import 'package:interview_monk/screens/session_settings_screen.dart';
import 'package:interview_monk/screens/settings_screen.dart';
import 'package:interview_monk/screens/splash_screen.dart';
import 'package:interview_monk/screens/welcome_screen.dart';
import 'package:interview_monk/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Interview Monk',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const SplashScreen(),
        routes: {
          '/welcome': (context) => const WelcomeScreen(),
          '/login': (context) => const LoginScreen(),
          '/dashboard': (context) => const MainShell(),
          '/personalize': (context) => const PersonalizationScreen(),
          '/interview': (context) => const InterviewScreen(),
          '/listening': (context) => const ListeningScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/answer_settings': (context) => const AnswerSettingsScreen(),
          '/session_settings': (context) => const SessionSettingsScreen(),
          '/pricing': (context) => const PricingScreen(),
        },
      ),
    );
  }
}
