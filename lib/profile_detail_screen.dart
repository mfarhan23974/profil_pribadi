// lib/profile_detail_screen.dart

import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Profil'),
        // FIX WARNA: Gunakan warna primer tema agar konsisten
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Foto Profil (Memuat dari Assets)
            Center(
              child: CircleAvatar(
                radius: 80,
                // FIX ASSET PATH: Menggunakan path yang benar
                backgroundImage: const AssetImage("assets/image/farhan.jpg"),
              ),
            ),

            const SizedBox(height: 30),

            // Nama & Judul
            Text(
              'Muhammad Farhan Chablullah',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(
              'Pengembang Aplikasi Seluler',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.teal),
            ),
            const Divider(height: 40),

            // Deskripsi Detail
            const Text(
              'Ringkasan Profil',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Berpengalaman dalam pengembangan aplikasi cross-platform menggunakan Flutter dan Dart. Fokus pada desain antarmuka yang responsif (UI/UX) dan integrasi API. Saya bersemangat dalam mengubah ide menjadi solusi digital yang nyata dan efisien.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 30),

            // Kontak
            const Text(
              'Kontak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildDetailRow(
                Icons.email, 'muhammadfarhanchablullah@gmail.com', context),
            _buildDetailRow(Icons.phone, '+62 822-9920-2193', context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary, size: 20),
          const SizedBox(width: 15),
          Flexible(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
