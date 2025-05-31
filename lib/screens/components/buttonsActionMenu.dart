import 'package:flutter/material.dart';
import 'package:wallet_app/screens/transfer.dart';
import 'package:wallet_app/screens/components/actionButton.dart';

class ButtonsActionMenu extends StatelessWidget {
  const ButtonsActionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ActionButton(
            icon: Icons.call_made,
            label: 'Transferência',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TransferScreen()),
              );
            },
          ),
          ActionButton(
            icon: Icons.payment,
            label: 'Pagamento',
            onTap: () {
              // TODO: ação de pagamento
            },
          ),
          ActionButton(
            icon: Icons.attach_money,
            label: 'Levantamento',
            onTap: () {
              // TODO: ação de saque
            },
          ),
          ActionButton(
            icon: Icons.add_circle_outline,
            label: 'Depósito',
            onTap: () {
              // TODO: ação de adicionar saldo
            },
          ),
        ],
      ),
    );
  }
}