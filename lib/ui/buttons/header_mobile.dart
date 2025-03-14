import 'package:flutter/material.dart';
import 'package:flutter_web/styles/styles.dart';
import 'package:flutter_web/ui/buttons/header_desktop.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(4, 5, 4, 5),
      decoration: kHederDecoration,
      child: (Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          SizedBox(width: 15),
        ],
      )),
    );
  }
}
