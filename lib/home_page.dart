import 'dart:ui';

import 'package:flow_app/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';
import 'package:google_fonts/google_fonts.dart';

import 'demo_page.dart';
import 'flow_scaffold.dart';

const myBlue = Color(0xFF3D7EAA);
const myYellow = Color(0xFFFFE47A);
const myRed = Color(0xFFEE2233);

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(counterProvider);
    return MaterialApp(
      title: 'Flow',
      home: FlowScaffold(
        child: FlowBackground(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Create a new Flow',
                            style: GoogleFonts.roboto(
                                fontSize: 40.0, color: Colors.white)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.add_rounded,
                          ),
                          color: Colors.white,
                          iconSize: 50.0,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Image.asset('assets/Meditative Lotus.png'),
                    Asanastyps('Standing'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Backward Bends'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Forward Bends'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Side Bends'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Inversions'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Spinal Twisting'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Relaxation'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 40.0),
                    Asanastyps('Meditation'),
                    SizedBox(height: 5.0),
                    Asanasimages(),
                    SizedBox(height: 90.0),
                  ],
                ),
              ));
            },
          ),
        ),
      ),
    );
  }
}

class GlassBar extends AppBar {
  final String text;
  GlassBar(this.text)
      : super(
          title: Stack(
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(color: Colors.white.withOpacity(0.001)),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.kaushanScript(fontSize: 36),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        );
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
          decoration: BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              name,
              style: GoogleFonts.roboto(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class Asanasimages extends StatelessWidget {
  @override
  Widget build(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            child: Image.asset(
                'assets/Backward Bends/Backward Bends High Lunge.png'),
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
