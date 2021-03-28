import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yeet/yeet.dart';

import 'home_page.dart';

class MyBottomnavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: 75,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Container(color: Colors.white.withOpacity(0.001)),
            ),
            Container(
              height: 75,
              padding: EdgeInsets.only(top: 5, bottom: 30),
              color: myBlue.withOpacity(0.001),
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
                      context.yeet('/');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.waves,
                      size: 44.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      context.yeet('/demo');
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 44.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      context.yeet('/login');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
