// lib/profile_widget.dart

import 'package:flutter/material.dart';
import 'profile_detail_screen.dart'; // FIX: Import halaman detail

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const CircleAvatar(
          radius: 60,
          // FIX ASSET PATH: Menggunakan path yang sudah diperbaiki
          backgroundImage: AssetImage("assets/image/dwi.jpeg"),
        ),
        const SizedBox(height: 20),
        const Text(
          "Dwi Astina",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Pengembang Flutter | Mahasiswa Sistem Informasi",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.blueGrey),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            // FIX NAVIGASI: Pindah ke halaman detail
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileDetailScreen(),
              ),
            );
          },
          child: const Text(
              "Lihat Profil Lengkap"), // Mengubah teks tombol agar lebih sesuai
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.email, size: 20, color: Colors.blue),
            SizedBox(width: 8),
            Text("dwi123astina@gmail.com"),
          ],
        ),
      ],
    );
  }
}
