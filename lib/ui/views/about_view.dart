import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aboutview extends StatelessWidget {
  const Aboutview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.deepOrange,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'ABOUT VIEW',
            style: GoogleFonts.montserrat(
              fontSize: 80,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}