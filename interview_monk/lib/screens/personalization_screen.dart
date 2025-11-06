import 'package:flutter/material.dart';
import 'package:interview_monk/widgets/primary_button.dart';

class PersonalizationScreen extends StatelessWidget {
  const PersonalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tailor Your AI Assistant'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Personalize Your Prep',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Provide your resume and the job description so the AI can give you perfectly tailored interview questions and feedback.',
            ),
            const SizedBox(height: 24),
            const Text(
              'Step 1: Your CV/Resume',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Center(
                child: Column(
                  children: [
                    Icon(Icons.upload_file, size: 48),
                    SizedBox(height: 16),
                    Text('Upload Your CV/Resume'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Step 2: The Job Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Paste the job description here...',
              ),
            ),
            const Spacer(),
            PrimaryButton(
              text: 'Start My Prep',
              onPressed: () {
                Navigator.of(context).pushNamed('/interview');
              },
            ),
          ],
        ),
      ),
    );
  }
}
