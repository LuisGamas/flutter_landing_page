import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {

  final List<String> _pages = ['home','about','contact','location'];
  PageController scrollController = PageController();

  goTo(int index) {
    html.window.history.pushState(null, 'none', '#/${_pages[index]}');
    scrollController.animateToPage(
      index, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeInOut
    );
    notifyListeners();
  }
}