import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace with your own SVG logo asset
            SvgPicture.asset(
              'assets/cryptlock_logo.svg',
              height: 90,
            ),
            const SizedBox(height: 32),
            Text(
              "CryptLock Africa",
              style: GoogleFonts.dmSans(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF2C1653),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Secure P2P Crypto Escrow & Wallet",
              style: GoogleFonts.dmSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.1,
                color: Colors.deepPurple.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}