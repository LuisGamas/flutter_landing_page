import 'package:fluro/fluro.dart';
import 'package:flutter_landing_page/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {

    // * Rutas
    router.define('/:page', handler: homeHandler);

    // * Not routes found
    router.notFoundHandler = homeHandler;
  }
}