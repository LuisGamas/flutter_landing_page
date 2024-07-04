import 'package:fluro/fluro.dart';
import 'package:flutter_landing_page/providers/providers.dart';
import 'package:flutter_landing_page/ui/pages/ui_pages.dart';
import 'package:provider/provider.dart';

final homeHandler = Handler(
  handlerFunc: (context, parameters) {
    
    final page = parameters['page']!.first;
    
    if (page != '/') {
      final pageProvider = Provider.of<PageProvider>(context!, listen: false);
      pageProvider.createScrollController(page);
      return const HomePage();
    }

  }, 
);