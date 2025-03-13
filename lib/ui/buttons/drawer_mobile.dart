import 'package:flutter/material.dart';
import 'package:flutter_web/constant/nav_items.dart';

class SideBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(); //metodo for close sideBar
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              onTap: () {},
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            ),
        ],
      ),
    );
  }
}
