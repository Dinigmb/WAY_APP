import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import 'flow_scaffold.dart';

const myBlue = Color(0xFF3D7EAA);
const myYellow = Color(0xFFFFE47A);
const myRed = Color(0xFFEE2233);

final counterProvider = StateProvider((_) => 0);
final doubleProvider = Provider((ref) => ref.watch(counterProvider).state * 2);
final tripleProvider = Provider<int>((ref) {
  final counter = ref.watch(counterProvider).state;
  final doubleCounter = ref.watch(doubleProvider);
  return counter + doubleCounter;
});

class LoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(counterProvider);
    return MaterialApp(
      title: 'Flow',
      home: FlowScaffold(
        child: Container(
          color: Colors.black,
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
                      height: 50,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Welcome to the Flow State',
                          style: GoogleFonts.montserrat(
                              fontSize: 40.0, color: Colors.brown[50]),
                        ),
                      ),
                    ),
                    Lottie.asset('assets/yogi_hosi.json'),
                    SizedBox(height: 40.0),
                    SizedBox(height: 5.0),
                    Text(
                      'New features comming soon',
                      style: GoogleFonts.montserrat(
                          fontSize: 40.0, color: Colors.brown[50]),
                    ),
                    SizedBox(height: 40.0),
                    SizedBox(height: 5.0),
                    SizedBox(height: 135.0),
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
              style:
                  GoogleFonts.montserrat(fontSize: 25.0, color: Colors.white),
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
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          Container(
            height: 150.0,
            width: 410.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
        ],
      ),
    );
  }
}
