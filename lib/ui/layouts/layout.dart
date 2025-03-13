import 'package:flutter/material.dart';
import 'package:flutter_web/ui/buttons/drawer_mobile.dart';
import 'package:flutter_web/ui/buttons/header_desktop.dart';
import 'package:flutter_web/ui/buttons/header_mobile.dart';
import 'package:flutter_web/ui/view/about_view.dart';
import 'package:flutter_web/ui/view/home_view.dart';

class Layout extends StatefulWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: size.width >= 1000 ? null : SideBarMobile(),
      body: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            //Desktop
            (size.width >= 1000)
                ? HeaderDesktop()
                : HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
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
