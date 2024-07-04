import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {

  final List<String> _pages = ['home','about','contact','location'];
  PageController scrollController = PageController();

  createScrollController(String routeName) {
    scrollController = PageController(initialPage: getPageIndex(routeName));
  }

  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

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