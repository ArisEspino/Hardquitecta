import 'package:flutter/material.dart';
import 'package:flutter_web/ui/buttons/drawer_mobile.dart';
import 'package:flutter_web/ui/buttons/header_desktop.dart';
import 'package:flutter_web/ui/buttons/header_mobile.dart';
import 'package:flutter_web/ui/view/about_view.dart';
import 'package:flutter_web/ui/view/blogs_view.dart';
import 'package:flutter_web/ui/view/home_view.dart';
import 'package:flutter_web/ui/view/project_view.dart';

class Layout extends StatefulWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      endDrawer:
          size.width >= 1000 ? null : SideBarMobile(scaffoldKey: scaffoldKey),
      body: Container(
        child: Stack(
          children: [
            _HomeBody(),
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
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [HomeView(), AboutView(), BlogsView(), ProjectView()],
    );
  }
}
