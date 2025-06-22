import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const Center(
                child: Text(
                  'Welcome to\nReminders',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const InfoRow(
                icon: Icons.access_time,
                color: Colors.green,
                title: 'Quick Creation',
                description:
                    'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
              ),
              const SizedBox(height: 20),
              const InfoRow(
                icon: Icons.local_grocery_store,
                color: Colors.orange,
                title: 'Grocery Shopping',
                description:
                    'Create a Grocery List that automatically sorts items you add by category.',
              ),
              const SizedBox(height: 20),
              const InfoRow(
                icon: Icons.group,
                color: Colors.yellow,
                title: 'Easy Sharing',
                description:
                    'Collaborate on a list, and even assign individual tasks.',
              ),
              const SizedBox(height: 20),
              const InfoRow(
                icon: Icons.dashboard,
                color: Colors.blue,
                title: 'Powerful Organization',
                description:
                    'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 18, color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String description;

  const InfoRow({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 30),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
