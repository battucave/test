import 'package:flutter/material.dart';
import 'package:interview_monk/services/mock_stt_service.dart';
import 'package:interview_monk/theme.dart';

class ListeningScreen extends StatefulWidget {
  const ListeningScreen({super.key});

  @override
  State<ListeningScreen> createState() => _ListeningScreenState();
}

class _ListeningScreenState extends State<ListeningScreen> {
  final MockSttService _sttService = MockSttService();

  @override
  void initState() {
    super.initState();
    _listenForQuestion();
  }

  void _listenForQuestion() async {
    final question = await _sttService.listen();
    if (mounted) {
      Navigator.of(context).pushReplacementNamed(
        '/interview',
        arguments: question,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Icon(
              Icons.mic,
              size: 120,
              color: Colors.white,
            ),
            const SizedBox(height: 24),
            const Text(
              'Listening for questions...',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'As the interview progresses, the AI will detect questions and provide real-time guidance.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.textSecondaryDark,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer now'),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
