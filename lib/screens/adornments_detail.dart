import 'package:flutter/material.dart';
import 'package:old_world_adornments/models/adornments_entry.dart';

class AdornmentsDetailPage extends StatelessWidget {
  final AdornmentsEntry item;

  const AdornmentsDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adornments Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(255, 176, 171, 156), // Sand Beige
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Center(
                        child: Text(
                          item.fields.name,
                          style: const TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontFamily: 'Georgia', // Gaya vintage
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      DetailRow(
                        label: 'Description',
                        value: item.fields.description,
                        valueStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[600],
                          fontFamily: 'Georgia',
                        ),
                      ),
                      const SizedBox(height: 16),
                      DetailRow(
                        label: 'Size',
                        value: item.fields.size,
                        valueStyle: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 16),
                      DetailRow(
                        label: 'Color',
                        value: item.fields.color,
                        valueStyle: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 16),
                      DetailRow(
                        label: 'Quantity',
                        value: "${item.fields.quantity}",
                        valueStyle: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Text(
                          'Rp ${item.fields.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Georgia',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD1AEA4),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back to Adornments List",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Georgia',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? valueStyle;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Georgia',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: valueStyle ??
              const TextStyle(
                fontSize: 16.0,
                fontFamily: 'Georgia',
              ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
