import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Wallet App',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Activo',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 131, 247, 154),
                ),
              ),
            ],
          ),
          const Spacer(),
          // Avatar do usuário
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/123027006?v=4',
            ),
          ),
        ],
      ),
    );
  }
}