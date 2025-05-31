import 'package:flutter/material.dart';
import 'package:wallet_app/screens/viewAllTransactions.dart';
import 'package:wallet_app/screens/components/transactionItem.dart';

class LastTransactions extends StatelessWidget {
  const LastTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Últimas Transações',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ViewAllTransactions()),
                  );
                },
                child: const Text(
                  'Ver Todas',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: const [
              TransactionItem(
                icon: Icons.movie,
                title: 'Netflix',
                subtitle: 'Subscrição mensal',
                amount: '\$120',
              ),
              TransactionItem(
                icon: Icons.payment,
                title: 'ENDE',
                subtitle: 'Taxa de energia',
                amount: 'AOA 19.744',
              ),
              TransactionItem(
                icon: Icons.shopping_bag,
                title: 'Amazon',
                subtitle: 'Compras',
                amount: '\$2500',
              ),
              TransactionItem(
                icon: Icons.payment,
                title: 'EPAL',
                subtitle: 'Taxa de água',
                amount: 'AOA 9.412',
              ),
            ],
          ),
        ),
      ],
    );
  }
}