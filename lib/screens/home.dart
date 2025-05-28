import 'package:flutter/material.dart';
import 'package:wallet_app/screens/notification.dart';
import 'package:wallet_app/screens/transfer.dart';
import 'package:wallet_app/screens/profile_settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeHeader(),
              const BalanceCard(),
              const SizedBox(height: 24),
              const ActionsRow(),
              const SizedBox(height: 24),
              const LastTransactions(),
              const SizedBox(height: 24),
              const CustomBottomNavBar(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

/// ===========================
/// 1) CABEÇALHO
/// ===========================
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

/// ===========================
/// 2) CARTÃO DE SALDO
/// ===========================
class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -30,
            top: -30,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Saldo',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'AOA 126.544.238',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Cartão',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'BFA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// ===========================
/// 3) BOTÕES DE AÇÕES
/// ===========================
class ActionsRow extends StatelessWidget {
  const ActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ActionButton(
            icon: Icons.call_made, 
            label: 'Transferência',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TransferScreen()),
              );
            },
          ),
          _ActionButton(
            icon: Icons.payment, 
            label: 'Pagamento',
            onTap: () {
              // TODO: ação de pagamento              
            },
          ),
          _ActionButton(
            icon: Icons.attach_money,
            label: 'Levantamento',
            onTap: () {
              // TODO: ação de saque
            },
          ),
          _ActionButton(
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

/// Widget personalizado para cada botão de ação
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Icon(
              icon,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

/// ===========================
/// 4) ÚLTIMAS TRANSAÇÕES
/// ===========================
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
            children: const [
              Text(
                'Últimas Transações',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Ver Todas',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Lista de transações
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: const [
              _TransactionItem(
                icon: Icons.movie, 
                title: 'Netflix',
                subtitle: 'Subscrição mensal',
                amount: '\$120',
              ),
              _TransactionItem(
                icon: Icons.payment, 
                title: 'ENDE',
                subtitle: 'Taxa de energia',
                amount: 'AOA 19.744',
              ),
              _TransactionItem(
                icon: Icons.shopping_bag, 
                title: 'Amazon',
                subtitle: 'Compras',
                amount: '\$2500',
              ),
              _TransactionItem(
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

class _TransactionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;

  const _TransactionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.black12,
            child: Icon(icon, color: Colors.black54),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

/// ===========================
/// 5) BARRA INFERIOR
/// ===========================
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(Icons.home),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreen()),
              );
            },
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileSettingsScreen()),
              );
            },
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
