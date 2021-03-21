import 'package:flutter/material.dart';

class MyBottomnavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        padding: EdgeInsets.only(top: 5, bottom: 30),
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.house,
                size: 44.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.waves,
                size: 44.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/demo');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 44.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ));
  }
}
