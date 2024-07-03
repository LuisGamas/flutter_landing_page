import 'package:flutter/material.dart';
import 'package:flutter_landing_page/ui/views/ui_views.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
      
          // * 
          _HomeBody(),
      
          // * Menu
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              width: 150,
              height: 50,
              color: Colors.black,
            )
          ),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        Aboutview(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}