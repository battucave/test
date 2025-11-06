import 'dart:async';
import 'package:flutter/material.dart';
import 'package:interview_monk/services/deepgram_service.dart';
import 'package:interview_monk/services/gemini_service.dart';
import 'package:interview_monk/widgets/ai_suggestions.dart';

class InterviewScreen extends StatefulWidget {
  const InterviewScreen({super.key});

  @override
  State<InterviewScreen> createState() => _InterviewScreenState();
}

class _InterviewScreenState extends State<InterviewScreen> {
  final DeepgramService _deepgramService = DeepgramService();
  final GeminiService _geminiService = GeminiService();
  String _transcript = '';
  List<String> _suggestions = [];
  StreamSubscription? _transcriptSubscription;

  @override
  void initState() {
    super.initState();
    _startListening();
  }

  void _startListening() {
    _transcriptSubscription = _deepgramService.listen().listen(
      (transcript) {
        setState(() {
          _transcript = transcript;
        });
      },
      onDone: () {
        _getSuggestions();
      },
    );
  }

  void _getSuggestions() async {
    final suggestions = await _geminiService.getSuggestions(_transcript);
    setState(() {
      _suggestions = suggestions;
    });
  }

  @override
  void dispose() {
    _transcriptSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final question = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Software Engineer Role'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('End'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Progress Bar
            const LinearProgressIndicator(value: 0.3),
            const SizedBox(height: 16.0),

            // Question Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  question ?? 'Tell me about a time you faced a difficult challenge at work.',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 24.0),

            // Live Transcript
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(_transcript),
                ),
              ),
            ),
            const SizedBox(height: 24.0),

            // AI Suggestions
            AiSuggestions(suggestions: _suggestions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
