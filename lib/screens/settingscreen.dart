import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        children: [
          const SizedBox(height: 10),

          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text("Notifications"),
            subtitle: const Text("Manage your notifications"),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.language_outlined),
            title: const Text("Language"),
            subtitle: const Text("English"),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
            ),
            onTap: () {},
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.dark_mode_outlined),
            title: const Text("Dark Mode"),
            subtitle: const Text("Change app appearance"),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
            ),
            onTap: () {},
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: const Text("Privacy"),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}