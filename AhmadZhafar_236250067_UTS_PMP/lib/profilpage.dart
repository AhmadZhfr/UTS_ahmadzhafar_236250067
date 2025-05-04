import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    const greenColor = Color(0xFF95F591);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Ahmad Zhafar',
          style: TextStyle(
            fontSize: 20,
            color: greenColor,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/gambarku1.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nama : Ahmad Zhafar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: greenColor,
                ),
              ),
              const Text(
                'NIM: 236250067',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: greenColor,
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome'); 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: greenColor),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: greenColor, 
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
