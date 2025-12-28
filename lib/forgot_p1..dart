import 'package:flutter/material.dart';

class ForgotP1 extends StatelessWidget {
  const ForgotP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add logo image
            Image.asset(
              'assets/logo.png',
              height: 72,
              width: 72,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.restaurant, color: Colors.green, size: 36),
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
            const SizedBox(height: 24),

            _greenButton('Next', () {
              Navigator.pushNamed(context, '/forgot2');
            }),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String hint) {
    return TextField(
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
}
