import 'package:fluro/fluro.dart';
import 'package:flutter_web/router/home_handler.dart';
import 'package:flutter_web/router/no_page_found.dart';

class Flurorouter {
  //Instancia de fluro
  static final FluroRouter router = new FluroRouter();
  //Initial
  static String rootRouter = '/';
  //Home Route
  static String homeRoute = '/homePage';

  static void configureRoutes() {
    //define routes
    router.define(homeRoute, handler: HomeHandler.home);
    //404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
