import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              radius: 50,
              backgroundImage:        NetworkImage(
                  'https://avatars.githubusercontent.com/u/123027006?v=4'
                ), 
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text("Alterar", style: TextStyle(color: Colors.purple)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gilson Loureiro",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.edit, size: 18, color: Colors.purple),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  buildSettingsOption("Conta conectada"),
                  buildSettingsOption("Segurança & Privacidade"),
                  buildSettingsOption("Configurações de entrada"),
                  buildSettingsOption("Centro de serviços"),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.purple,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Column(
                children: [
                  Icon(Icons.delete, color: Colors.purple),
                  Text("Apagar conta", style: TextStyle(color: Colors.purple)),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsOption(String title) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }
}
