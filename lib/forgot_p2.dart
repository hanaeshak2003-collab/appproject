import 'package:flutter/material.dart';

class ForgotP2 extends StatelessWidget {
  const ForgotP2({super.key});

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

            const SizedBox(height: 12),

            const Text(
              'Check your email enter the OTP',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) => _otpBox()),
            ),

            const SizedBox(height: 30),
            _greenButton('Next', () {
              Navigator.pushNamed(context, '/forgot3');
            }),
          ],
        ),
      ),
    );
  }

  Widget _otpBox() {
    return SizedBox(
      width: 40,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(),
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
