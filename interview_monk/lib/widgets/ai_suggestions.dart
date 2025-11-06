import 'package:flutter/material.dart';

class AiSuggestions extends StatelessWidget {
  final List<String> suggestions;

  const AiSuggestions({
    super.key,
    required this.suggestions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ExpansionTile(
        title: const Text(
          'AI Suggestions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        children: suggestions
            .map(
              (suggestion) => ListTile(
                leading: const Icon(Icons.star, color: Colors.amber),
                title: Text(suggestion),
              ),
            )
            .toList(),
      ),
    );
  }
}
