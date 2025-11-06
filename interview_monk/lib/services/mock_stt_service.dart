import 'dart:async';

class MockSttService {
  Future<String> listen() async {
    // Simulate a delay for listening
    await Future.delayed(const Duration(seconds: 3));
    // Return a mock question
    return 'Tell me about a time you had to handle a difficult stakeholder.';
  }
}
