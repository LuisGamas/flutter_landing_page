import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({super.key});

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () { },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: 150,
          height: 50,
          color: Colors.black,
          child: Row(
            children: [
        
              Text(
                'Menú', 
                style: GoogleFonts.robotoFlex(color: Colors.white, fontSize: 18),
              ),
        
              const Spacer(),
        
              const Icon(
                Icons.menu,
                color: Colors.white,
              )
        
            ],
          ),
        ),
      ),
    );
  }
}