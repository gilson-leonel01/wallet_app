import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Definições",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildSettingsItem(Icons.person, "Perfil"),
            _buildSettingsItem(Icons.notifications, "Notificações"),
            _buildSettingsItem(Icons.account_balance_wallet, "Carteira"),
            _buildSettingsItem(Icons.lock, "Definições de inicialização"),
            _buildSettingsItem(Icons.support_agent, "Serviço de suporte"),
            Spacer(),
            _buildLogoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(IconData icon, String title) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.purple.shade50,
        child: Icon(icon, color: Colors.purple),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // TODO: ação para chamar todas opções
      },
    );
  }

  Widget _buildLogoutButton() {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.purple.shade50,
          child: Icon(Icons.logout, color: Colors.purple, size: 28),
        ),
        SizedBox(height: 10),
        Text(
          "Sair",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
