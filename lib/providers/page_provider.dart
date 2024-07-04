import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {

  final List<String> _pages = ['home','about','contact','location'];
  PageController scrollController = PageController();
  int _currentIndex = 0;

  createScrollController(String routeName) {
    scrollController = PageController(initialPage: getPageIndex(routeName));
    scrollController.addListener(() {
      final index = (scrollController.page ?? 0).round();
      if(index != _currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_pages[index]}');
        _currentIndex = index;
      }
    });
  }

  int getPageIndex(String routeName) {
    return (!_pages.contains(routeName)) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    scrollController.animateToPage(
      index, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeInOut
    );
    notifyListeners();
  }
}