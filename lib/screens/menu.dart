import 'package:flutter/material.dart';
import 'package:old_world_adornments/widgets/left_drawer.dart';
import 'package:old_world_adornments/widgets/adornments_card.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306240111';
  final String name = 'Annisa Dwiyanti Ismael';
  final String className = 'PBP B';

  // Daftar item dengan warna khusus untuk setiap tombol
  final List<AdornmentsHomepage> items = [
    AdornmentsHomepage("View Adornments List", Icons.list, const Color(0xFF121F16)),
    AdornmentsHomepage("Add Adornments", Icons.add, const Color(0xFFD1AEA4)),
    AdornmentsHomepage("Logout", Icons.logout, const Color(0xFFA0825B)),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        title: const Text(
          'Old-World Adornments',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Welcome to Old-World Adornments',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded( // Menggunakan Expanded agar GridView mengisi ruang kosong
              child: GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: items.map((item) {
                  return AdornmentsCard(item);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      color: const Color.fromARGB(255, 229, 223, 213), // Warna latar belakang kartu
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Membuat sudut membulat
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF7F7364), // Warna teks judul
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(
                color: Color(0xFF3E2723), // Warna teks isi kartu
              ),
            ),
          ],
        ),
      ),
    );
  }
}
