import 'dart:ui';

import 'package:flow_app/application/flow/flow_bloc.dart';
import 'package:flow_app/bottom_navbar.dart';
import 'package:flow_app/domain/asana/asana.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
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
                                fontSize: 40.0, color: Colors.brown[50])),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ...allAsanas(),
                    SizedBox(
                      height: 80.0,
                    )
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

List<Widget> allAsanas() {
  Set<String> categories = {};
  for (final asana in asanas) {
    categories.add(asana.category);
  }
  return categories
      .map(
        (e) => Asanasimages(
          category: e.replaceAll("_", " "),
          asanasList: asanas.where((asana) => asana.category == e).toList(),
        ),
      )
      .toList();
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
                  GoogleFonts.roboto(fontSize: 25.0, color: Colors.brown[50]),
            ),
          ),
        ),
      ),
    );
  }
}

class Asanasimages extends StatelessWidget {
  final String category;
  final List<Asana> asanasList;

  const Asanasimages({
    required this.category,
    required this.asanasList,
  });

  @override
  Widget build(context) {
    return Column(
      children: [
        Asanastyps(category),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: asanasList.map((e) => AsanaWidget(e)).toList(),
          ),
        ),
      ],
    );
  }
}

class AsanaWidget extends HookWidget {
  final Asana asana;

  AsanaWidget(this.asana);

  @override
  Widget build(BuildContext context) {
    final flowBloc = useProvider(flowBlocProvider);
    useProvider(flowBlocProvider.state);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => flowBloc.toggleAsana(asana),
        child: Container(
          height: 150.0,
          width: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
                .withOpacity(flowBloc.isSelected(asana) ? 1.0 : 0.5),
          ),
          child: Image.asset(asana.imagePath),
        ),
      ),
    );
  }
}
