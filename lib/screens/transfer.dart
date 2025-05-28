import 'package:flutter/material.dart';
import 'home.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
 
  String _amount = "1200";

  String _selectedBank = "BFA";
  final List<String> _banks = [
    "BFA",
    "BAI",
    "BIC",
    "BPC",
    "BCI",
    "BCA",
    "BDA",
  ];

  void _onKeyTap(String keyValue) {
    setState(() {
      if (keyValue == 'DEL') {
        if (_amount.isNotEmpty) {
          _amount = _amount.substring(0, _amount.length - 1);
        }
      } else {
        _amount += keyValue;
      }
    });
  }

  void _onTransfer() {
    // TODO: Lógica de transferência
    debugPrint("Transferindo AOA $_amount para $_selectedBank");
  }

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
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Valor em destaque
            Text(
              'AOA $_amount',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 16),

            // Dropdown de banco
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedBank,
                  items: _banks
                      .map((bank) => DropdownMenuItem<String>(
                            value: bank,
                            child: Text(bank),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedBank = value ?? _selectedBank;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Teclado numérico
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // 1..9
                    ...List.generate(9, (index) {
                      final number = (index + 1).toString();
                      return _buildKey(number);
                    }),
                    _buildKey("00"),
                    _buildKey("0"),
                    // Botão de apagar (DEL)
                    _buildKey("DEL", isDelete: true),
                  ],
                ),
              ),
            ),

            // Botão de Transferência
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _onTransfer,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Transferir',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Constrói cada tecla do teclado
  Widget _buildKey(String value, {bool isDelete = false}) {
    return InkWell(
      onTap: () => _onKeyTap(isDelete ? 'DEL' : value),
      borderRadius: BorderRadius.circular(16),
      child: Center(
        child: isDelete
            ? const Icon(
                Icons.backspace_outlined,
                color: Colors.black54,
              )
            : Text(
                value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
      ),
    );
  }
}
