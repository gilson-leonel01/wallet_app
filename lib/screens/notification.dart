import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  // Lista de notificações antigas
  final List<NotificationItem> _oldNotifications = const [
    NotificationItem(
      dateTime: "23 Julho 2024, 10:00 AM",
      message: "Pagamento à EPAL",
      subMessage: "Fatura de água",
      statusIcon: Icons.check_outlined,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "23 Julho 2024, 11:30 AM",
      message: "Pagamento à ENDE",
      subMessage: "Fatura de energia",
      statusIcon: Icons.check_outlined,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "25 Julho 2024, 11:30 AM",
      message: "Pagamento à SME",
      subMessage: "Fatura do passaporte",
      statusIcon: Icons.check_outlined,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "26 Julho 2024, 11:30 AM",
      message: "Pagamento à DNVT",
      subMessage: "Fatura da carta de condução",
      statusIcon: Icons.check_outlined,
      statusColor: Colors.green,
    ),
  ];

  // Lista de notificações recentes 
  final List<NotificationItem> _recentNotifications = const [
    NotificationItem(
      dateTime: "27 Julho 2024, 3:00 PM",
      message: "Assinatura mensal Netflix",
      subMessage: "Pagamento recorrente",
      statusIcon: Icons.check_circle,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "27 Julho 2024, 3:00 PM",
      message: "Assinatura mensal Spotify",
      subMessage: "Pagamento recorrente",
      statusIcon: Icons.check_circle,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "28 Julho 2024, 9:00 AM",
      message: "Compra na Amazon",
      subMessage: "Eletrônicos e acessórios",
      statusIcon: Icons.check_circle,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "28 Julho 2024, 9:00 AM",
      message: "Compra na SHEIN",
      subMessage: "Roupas e acessórios",
      statusIcon: Icons.check_circle,
      statusColor: Colors.green,
    ),
    NotificationItem(
      dateTime: "30 Julho 2024, 5:45 PM",
      message: "Transferência recebida",
      subMessage: "Reembolso de viagem",
      statusIcon: Icons.check_circle,
      statusColor: Colors.green,
    ),
  ];

  // Lista de notificações recentes 
  final List<NotificationItem> _canceledNotifications = const [
    NotificationItem(
      dateTime: "17 Junho 2024, 3:00 PM",
      message: "Assinatura mensal Netflix",
      subMessage: "Pagamento recorrente",
      statusIcon: Icons.cancel_outlined,
      statusColor: Colors.red,
    ),
    NotificationItem(
      dateTime: "07 Julho 2024, 2:00 PM",
      message: "Assinatura mensal Spotify",
      subMessage: "Pagamento recorrente",
      statusIcon: Icons.cancel_outlined,
      statusColor: Colors.red,
    ),
    NotificationItem(
      dateTime: "07 Feveiro 2025, 1:00 PM",
      message: "Assinatura mensal Spotify",
      subMessage: "Pagamento recorrente",
      statusIcon: Icons.cancel_outlined,
      statusColor: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.purple),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 24.0).copyWith(bottom: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Notificações',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Recentes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),

                ..._recentNotifications
                    .map((notif) => NotificationCard(notif)),

                const SizedBox(height: 24),

                const Text(
                  'Antigas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),

                ..._oldNotifications.map((notif) => NotificationCard(notif)),

                const SizedBox(height: 24),
                
                const Text(
                  'Canceladas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 16),

                ..._canceledNotifications.map((notif) => NotificationCard(notif)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationItem {
  final String dateTime;
  final String message;
  final String subMessage;
  final IconData statusIcon;
  final Color statusColor;

  const NotificationItem({
    required this.dateTime,
    required this.message,
    required this.subMessage,
    required this.statusIcon,
    required this.statusColor,
  });
}

class NotificationCard extends StatelessWidget {
  final NotificationItem item;

  const NotificationCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.dateTime,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  item.message,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                item.statusIcon,
                color: item.statusColor,
              ),
            ],
          ),
          const SizedBox(height: 4),

          Text(
            item.subMessage,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
