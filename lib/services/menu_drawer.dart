import 'package:flutter/material.dart';
import 'package:voy_xaba/screens/display_text.dart';

import '../screens/dad_joke.dart';

class menuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.text_format_outlined,
            text: 'Display Text',
            onTap: () =>
                Navigator.pushReplacementNamed(context, DisplayText.routeName),
          ),
          createDrawerBodyItem(
            icon: Icons.face_unlock_outlined,
            text: 'Dad joke',
            onTap: () =>
                Navigator.pushReplacementNamed(context, DadJoke.routeName),
          ),
        ],
      ),
    );
  }
}

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
         ),
      child: Stack(children: const <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Welcome",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget createDrawerBodyItem(
    {required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
