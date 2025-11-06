import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiService {
  final Gemini gemini = Gemini.instance;

  Future<List<String>> getSuggestions(String prompt) async {
    // This is where you would initialize Gemini with your API key
    // Gemini.init(apiKey: 'YOUR_API_KEY');

    // This is where you would make a call to the Gemini API
    // For now, we'll return mock data
    if (prompt.isNotEmpty) {
      return [
        'Tip: Use the STAR method to structure your answer.',
        'Key point: Mention the specific outcome and what you learned.',
        'Consider adding: \'The project resulted in a 15% increase in user engagement.\'',
      ];
    } else {
      return [];
    }
  }
}
