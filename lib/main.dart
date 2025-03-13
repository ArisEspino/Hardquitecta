import 'package:flutter/material.dart';
import 'package:flutter_web/router/router.dart';
import 'package:flutter_web/ui/layouts/layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hardquitecta',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        return Layout(child: child!);
      },
    );
  }
}
