import 'package:deepgram_speech_to_text/deepgram_speech_to_text.dart';

class DeepgramService {
  final String apiKey = 'YOUR_DEEPGRAM_API_KEY'; // Placeholder

  Stream<String> listen() {
    // This is where you would connect to the Deepgram API
    // and return a stream of transcriptions.
    // For now, we'll return a mock stream.
    return Stream.fromIterable([
      'Tell me about a time you had to handle a difficult stakeholder.',
    ]);
  }
}
