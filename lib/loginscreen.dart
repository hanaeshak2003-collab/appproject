import 'package:flutter/material.dart';
import 'BD_p.dart'; // added import

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // Add logo image
            Image.asset(
              'assets/logo.png',
              height: 80,
              width: 80,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.restaurant, color: Colors.green, size: 40),
                );
              },
            ),

            const SizedBox(height: 20),

            const Text(
              'NutriSeseSmart',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF63B54F),
              ),
            ),
            const SizedBox(height: 40),

            _inputField('Email / Username'),
            const SizedBox(height: 16),
            _inputField('Password', isPassword: true),

            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgot1');
                },
                child: considerText(),
              ),
            ),

            const SizedBox(height: 20),
            _greenButton('Login', () {
              // navigate to birth date page after login
              Navigator.pushReplacementNamed(context, BirthDatePage.routeName);
            }),

            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Continue with Google'),
            ),

            const SizedBox(height: 20),
            const Text("Don't have an account? Sign Up"),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _greenButton(String text, VoidCallback onTap) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF63B54F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(text),
      ),
    );
  }

  Widget considerText() {
    return const Text(
      'Forget your Password? Reset your password',
      style: TextStyle(color: Colors.orange, fontSize: 12),
    );
  }
}
