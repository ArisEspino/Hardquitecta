import 'package:fluro/fluro.dart';
import 'package:flutter_web/ui/view/home_view.dart';

class HomeHandler {
  static Handler home = Handler(
    handlerFunc: (context, params) {
      return HomeView();
    },
  );
}
