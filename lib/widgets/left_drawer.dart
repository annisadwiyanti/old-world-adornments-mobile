import 'package:flutter/material.dart';
import 'package:old_world_adornments/screens/menu.dart';
import 'package:old_world_adornments/screens/adornmentsentry_form.dart';
import 'package:old_world_adornments/screens/list_adornmentsentry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 176, 171, 156), // Sand Beige untuk warna header
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Old-World Adornments',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 58, 58, 56), // Abu vintage
                    fontFamily: 'Georgia', // Gaya vintage
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Discover Timeless Beauty",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 120, 118, 114),
                    fontFamily: 'Georgia',
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Color(0xFF121F16)), // Hijau gelap
            title: const Text(
              'Home Page',
              style: TextStyle(
                fontFamily: 'Georgia',
                color: Color(0xFF121F16),
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add, color: Color(0xFF121F16)),
            title: const Text(
              'Add Adornments',
              style: TextStyle(
                fontFamily: 'Georgia',
                color: Color(0xFF121F16),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdornmentsEntryFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_rounded, color: Color(0xFF121F16)),
            title: const Text(
              'Adornments List',
              style: TextStyle(
                fontFamily: 'Georgia',
                color: Color(0xFF121F16),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdornmentsEntryPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
