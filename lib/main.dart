import 'package:flutter/material.dart';
import 'features/home/screens/home_screen.dart';

void main() {
  runApp(const ProyectoFinalMovil());
}

class ProyectoFinalMovil extends StatelessWidget {
  const ProyectoFinalMovil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SwimTracker',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F4F4),
      ),
      home: const HomeScreen(),
    );
  }
}