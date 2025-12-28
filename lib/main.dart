import 'package:flutter/material.dart';
import 'logo.dart';
import 'loginscreen.dart';
import 'forgot_p1..dart';
import 'forgot_p2.dart';
import 'forgot_p3.dart';
import 'BD_p.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NutriSeseSmart',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: '/logo',
      routes: {
        '/': (context) => const LoginScreen(),
        '/logo': (context) => const LogoScreen(),
        '/login': (context) => const LoginScreen(),
        '/forgot1': (context) => const ForgotP1(),
        '/forgot2': (context) => const ForgotP2(),
        '/forgot3': (context) => const ForgotP3(),
        BirthDatePage.routeName: (context) => const BirthDatePage(),
      },
    );
  }
}
