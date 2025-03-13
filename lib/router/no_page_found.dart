import 'package:fluro/fluro.dart';
import 'package:flutter_web/ui/view/no_page_found_view.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(
    handlerFunc: (context, params) {
      return NoPageFoundView();
    },
  );
}
