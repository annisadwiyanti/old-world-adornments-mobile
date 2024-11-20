import 'package:flutter/material.dart';
import 'package:old_world_adornments/screens/adornmentsentry_form.dart';
import 'package:old_world_adornments/screens/list_adornmentsentry.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:old_world_adornments/screens/login.dart';

class AdornmentsHomepage {
  final String name;
  final IconData icon;
  final Color color;

  AdornmentsHomepage(this.name, this.icon, this.color);
}

class AdornmentsCard extends StatelessWidget {
  final AdornmentsHomepage adornments;
  const AdornmentsCard(this.adornments, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: adornments.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          if (adornments.name == "Add Adornments") {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text("You pressed the ${adornments.name} button!"),
                ),
              );
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AdornmentsEntryFormPage()),
            );
          } else if (adornments.name == "View Adornments List") {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text("You pressed the ${adornments.name} button!"),
                ),
              );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdornmentsEntryPage()),
            );
          } else if (adornments.name == "Logout") {
            final response = await request.logout(
              "http://localhost:8000/auth/logout/",
            );
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Goodbye, $uname!"),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              }
            }
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  adornments.icon,
                  color: const Color.fromARGB(255, 255, 255, 255), // Warna ikon
                  size: 35.0,
                ),
                const SizedBox(height: 8),
                Text(
                  adornments.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), // Warna teks
                    fontFamily: 'Georgia', // Gaya vintage
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
