import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget {

  final int delay;
  final String text;
  final Function onPressed;

  const CustomMenuItem({
    super.key,
    this.delay = 0,
    required this.text,
    required this.onPressed,
  });

  @override
  State<CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 20,
      delay: Duration(milliseconds: widget.delay),
      duration: const Duration(milliseconds: 150),
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHover = true;
        }),
        onExit: (event) => setState(() {
          isHover = false;
        }),
        child: GestureDetector(
          onTap: () => widget.onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 150,
            height: 50,
            color: isHover ? Colors.blueGrey : Colors.transparent,
            child: Center(
              child: Text(
                widget.text,
                style: GoogleFonts.robotoFlex(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}