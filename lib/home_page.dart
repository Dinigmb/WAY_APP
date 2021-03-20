import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

import 'demo_page.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(counterProvider);
    return AppBar(
      title: Text('Harbour.Space App'),
    );
  }
}

class Layout extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(counterProvider);
    return MaterialApp(
      title: 'FlowAPP',
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('FlowAPP'),
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
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.house,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.house,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            'Asanas',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36),
                    SizedBox(height: 36),
                  ],
                ),
              ));
            },
          )),
    );
  }
}
