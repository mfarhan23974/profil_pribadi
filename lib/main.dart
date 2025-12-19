// lib/main.dart

import 'package:flutter/material.dart';
import 'profile_widget.dart';

void main() {
  runApp(const ProfilPribadiApp());
}

class ProfilPribadiApp extends StatelessWidget {
  const ProfilPribadiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Biodata',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aplikasi Biodata"),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: const Center(child: ProfileWidget()),
      ),
    );
  }
}
