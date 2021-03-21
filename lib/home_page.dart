import 'package:flow_app/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

import 'demo_page.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(counterProvider);
    return MaterialApp(
      title: 'Flow',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Flow'),
              ],
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Create a new Flow',
                        style: TextStyle(fontSize: 30.0, color: Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Asanastyps('Standing'),
                  SizedBox(height: 50.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Asanastyps('Backward Bending'),
                  SizedBox(height: 50.0),
                  Asanastyps('Forward Bending'),
                  SizedBox(height: 50.0),
                  Asanastyps('Spinal Twisting'),
                  SizedBox(height: 50.0),
                  Asanastyps('Inverted'),
                  SizedBox(height: 50.0),
                  Asanastyps('Core Strength'),
                  SizedBox(height: 50.0),
                  Asanastyps('Hip opening'),
                  SizedBox(height: 50.0),
                  Asanastyps('Relaxation'),
                  SizedBox(height: 50.0),
                ],
              ),
            ));
          },
        ),
        bottomNavigationBar: MyBottomnavbar(),
      ),
    );
  }
}

class Asanastyps extends StatelessWidget {
  final String name;

  const Asanastyps(this.name);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.orange.shade200),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

abstract class Asanasimages extends StatelessWidget {
  final String name;

  const Asanasimages(this.name);

  @override
  Widget builder(context, ScrollController) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            color: Colors.grey,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
