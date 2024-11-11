import 'package:flutter/material.dart';
import 'package:old_world_adornments/screens/adornmentsentry_form.dart';

class AdornmentsHomepageItem {
  final String name;
  final IconData icon;
  final Color color;

  AdornmentsHomepageItem(this.name, this.icon, this.color);
}

class AdornmentsCard extends StatelessWidget {
  final AdornmentsHomepageItem item;

  const AdornmentsCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Menggunakan warna item yang ditentukan
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("You tapped ${item.name}!")),
            );

          // Pastikan nama item sesuai dengan nama dalam daftar item
          if (item.name == "Tambah Produk" || item.name == "Add Product" || item.name == "Add Adornments") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AdornmentsEntryFormPage(),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const SizedBox(height: 8),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
