import 'package:flutter/material.dart';
import 'BD_p.dart'; // added import

class ForgotP3 extends StatelessWidget {
  const ForgotP3({super.key});

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
              height: 64,
              width: 64,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.restaurant, color: Colors.green, size: 32),
                );
              },
            ),

            const SizedBox(height: 16),

            _inputField('Password', isPassword: true),
            const SizedBox(height: 16),
            _inputField('Confirm Password', isPassword: true),

            const SizedBox(height: 24),
            _greenButton('Login', () {
              // after password reset, open BirthDatePage and remove previous routes
              Navigator.pushNamedAndRemoveUntil(
                context,
                BirthDatePage.routeName,
                (route) => false,
              );
            }),
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
}
