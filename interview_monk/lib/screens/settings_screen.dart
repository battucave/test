import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile Information'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Manage Subscription'),
            onTap: () {
              Navigator.of(context).pushNamed('/pricing');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.tune),
            title: const Text('Customize AI Answer Generation'),
            onTap: () {
              Navigator.of(context).pushNamed('/answer_settings');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Push Notifications'),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Email Notifications'),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
