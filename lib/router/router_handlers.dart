import 'package:fluro/fluro.dart';
import 'package:flutter_landing_page/ui/pages/ui_pages.dart';

final homeHandler = Handler(
  handlerFunc: (context, parameters) {
    
    final page = parameters['page']!.first;
    
    if (page != '/') {
      return const HomePage();
    }

  }, 
);