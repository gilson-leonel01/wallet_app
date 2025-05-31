import 'package:flutter/material.dart';
import 'package:wallet_app/screens/lastTransactions.dart';
import 'package:wallet_app/screens/components/homeHeader.dart';
import 'package:wallet_app/screens/components/balanceCard.dart';
import 'package:wallet_app/screens/components/buttonsActionMenu.dart';
import 'package:wallet_app/screens/components/homeFooter.dart';

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
              HomeHeader(),
              BalanceCard(),
              const SizedBox(height: 24),
              ButtonsActionMenu(),
              const SizedBox(height: 24),
              LastTransactions(),
              const SizedBox(height: 24),
              CustomBottomNavBar(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
