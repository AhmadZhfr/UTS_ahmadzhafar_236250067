import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const greenColor = Color(0xFF95F591);

    final List<Map<String, dynamic>> layananData = [
      {
        'title': 'Layanan Keluarga',
        'jumlah': '2 Layanan',
        'image': 'assets/images/logo_dokter.png',
      },
      {
        'title': 'Kesehatan Anak',
        'jumlah': '4 Layanan',
        'image': 'assets/images/logo_pemeriksaan.png',
      },
      {
        'title': 'Cek Kesehatan',
        'jumlah': '3 Layanan',
        'image': 'assets/images/logo_pemeriksaan2.png',
      },
      {
        'title': 'Poli Umum',
        'jumlah': '6 Layanan',
        'image': 'assets/images/logo_resepsionis.png',
      },
      {
        'title': 'Imunisasi',
        'jumlah': '5 Layanan',
        'image': 'assets/images/logo_suster.png',
      },
      {
        'title': 'Vaksin Booster',
        'jumlah': '2 Layanan',
        'image': 'assets/images/logo_sabun.png',
      },
    ];

    final List<Map<String, String>> layananKhusus = [
      {
        'title': 'Konsultasi Gizi Harian',
        'image': 'assets/images/logo_dokter.png',
      },
      {
        'title': 'Pelatihan Cegah Diabetes',
        'image': 'assets/images/logo_pemeriksaan2.png',
      },
      {
        'title': 'Panduan Kesehatan Mental',
        'image': 'assets/images/logo_pemeriksaan.png',
      },
      {
        'title': 'Panduan Vaksinasi',
        'image': 'assets/images/logo_sabun.png',
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: greenColor),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Selamat datang di layanan kesehatan Indonesia',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'Apa yang ingin kamu lakukan hari ini?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: layananData.length,
                  itemBuilder: (_, i) {
                    final layanan = layananData[i];
                    return Container(
                      width: 140,
                      margin: EdgeInsets.only(right: i == layananData.length - 1 ? 0 : 12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            layanan['image']!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            layanan['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            layanan['jumlah']!,
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),
              const Text('Layanan Khusus',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),

              Expanded(
                child: ListView(
                  children: layananKhusus.map((layanan) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(12),
                      height: 100,
                      decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            layanan['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              layanan['title']!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
