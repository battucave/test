import 'package:flutter/material.dart';
import 'dart:async';

import 'package:interview_monk/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.record_voice_over,
              size: 120,
              color: Colors.white,
            ),
            SizedBox(height: 24),
            Text(
              'Interview Monk',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your AI Interview Coach.',
              style: TextStyle(
                fontSize: 18,
                color: AppTheme.textSecondaryDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
