import 'package:flutter/material.dart';

import 'profilpage.dart'; 
import 'welcomepage.dart'; 
import 'loginpage.dart';   
import 'signuppage.dart';  
import 'homepage.dart';   

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layanan Kesehatan Indonesia',
      initialRoute: '/profile', 
      routes: {
        '/profile': (context) => const ProfilPage(),
        '/welcome': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
