class MockGeminiService {
  Future<List<String>> getSuggestions(String prompt) async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 1));

    // Return a list of mock suggestions
    return [
      'Tip: Use the STAR method to structure your answer.',
      'Key point: Mention the specific outcome and what you learned.',
      'Consider adding: \'The project resulted in a 15% increase in user engagement.\'',
    ];
  }
}
