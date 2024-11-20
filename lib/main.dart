import 'package:flutter/material.dart';
import 'package:old_world_adornments/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Old-World Adornments',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFF9F7F2), // Sand Beige
            primary: const Color.fromARGB(255, 180, 177, 163), // Dark Green
            secondary: const Color.fromARGB(255, 209, 194, 164), // Soft Pink
            surface: const Color.fromARGB(255, 232, 227, 216), // Light background
            onPrimary: const Color.fromARGB(255, 255, 255, 255), // Text color on primary
          ),
          fontFamily: 'Georgia',
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 16, color: Color(0xFF5A5A5A)), // Updated body text
            titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Updated headline
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF121F16), // Dark Green
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD1AEA4), // Soft Pink
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        home: const LoginPage()
      ),
    );
  }
}
