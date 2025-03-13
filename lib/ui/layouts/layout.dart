import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web/ui/buttons/header_desktop.dart';
import 'package:flutter_web/ui/view/about_view.dart';
import 'package:flutter_web/ui/view/home_view.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
           HeaderDesktop()
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.pink, Colors.purpleAccent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
    ),
  );
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [HomeView(), AboutView()],
    );
  }
}
