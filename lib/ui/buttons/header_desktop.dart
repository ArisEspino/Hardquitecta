import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web/constant/nav_items.dart';
import 'package:flutter_web/styles/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderDesktop extends StatelessWidget {


  const HeaderDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: double.maxFinite,
      decoration: kHederDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: () {}),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: GoogleFonts.montserratAlternates(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Hardquitecta',
        style: GoogleFonts.montserratAlternates(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
