import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.blueGrey,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'LOCATION VIEW',
            style: GoogleFonts.robotoFlex(
              fontSize: 80,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}