import 'package:flutter/material.dart';
import 'package:wallet_app/screens/lastTransactions.dart';
import 'package:wallet_app/screens/components/transactionItem.dart';

class ViewAllTransactions extends StatelessWidget {
  const ViewAllTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todas as Transações')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Novas Transações',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            const TransactionItem(
              icon: Icons.flight,
              title: 'TAAG',
              subtitle: 'Viagem a Luanda',
              amount: 'AOA 45.000',
            ),
            const TransactionItem(
              icon: Icons.fastfood,
              title: 'KFC',
              subtitle: 'Almoço com amigos',
              amount: 'AOA 5.000',
            ),

            const SizedBox(height: 32),

            const Text(
              'Transações Anteriores',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            const LastTransactions(),
          ],
        ),
      ),
    );
  }
}
