import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistiques du mois', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text('Entrées', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        SizedBox(height: 6),
                        Text('+ 150 000 F', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                    Container(height: 30, width: 1, color: Colors.grey.shade300),
                    Column(
                      children: const [
                        Text('Sorties', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        SizedBox(height: 6),
                        Text('- 25 000 F', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Répartition par catégorie', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildStatCategory('Transferts d\'argent', '15 000 FCFA', Colors.blue, 0.6),
            _buildStatCategory('Paiements Marchands', '7 500 FCFA', Colors.purple, 0.3),
            _buildStatCategory('Frais de retrait', '2 500 FCFA', Colors.orange, 0.1),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCategory(String title, String amount, Color color, double percent) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(amount, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
            ],
          ),
          const SizedBox(height: 6),
          LinearProgressIndicator(
            value: percent,
            color: color,
            backgroundColor: color.withOpacity(0.15),
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }
}
