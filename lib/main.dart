import 'package:firebase_core/firebase_core.dart';
import 'package:flow_app/common/flow_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

import 'application/auth/auth_bloc.dart';
import 'demo_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'presentation/auth/auth_view.dart';

final firebaseProvider =
    FutureProvider((_) async => await Firebase.initializeApp());

void main() async {
  await Firebase.initializeApp();
  Hive.init('/hive');
  runApp(ProviderScope(child: MyApp()));
}

final yeetProvider = Provider<Yeet>((ref) {
  final firebase = ref.watch(firebaseProvider);
  final authState = ref.watch(authBlocProvider.state);
  return firebase.when(
    data: (_) => authState.maybeWhen(
      authenticated: (user) => Yeet(
        children: [
          Yeet(
            path: '/',
            builder: (_, __) => HomePage(),
          ),
          Yeet(
            path: '/demo',
            builder: (_, __) => DemoPage(),
          ),
          Yeet(
            path: '/login',
            builder: (_, __) => LoginPage(),
          ),
        ],
      ),
      orElse: () => Yeet(
        children: [
          Yeet(
            path: '/',
            builder: (_, __) => AuthView(),
          ),
        ],
      ),
    ),
    loading: () => Yeet(
      path: '/',
      builder: (_, __) =>
          Scaffold(body: Center(child: CircularProgressIndicator())),
    ),
    error: (_, __) => Yeet(
      path: '/',
      builder: (_, __) => Scaffold(body: Center(child: Text('Error!'))),
    ),
  );
});

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final firebase = useProvider(firebaseProvider);
    //firebase.when(data: data, loading: (_), error: error)
    final yeet = useProvider(yeetProvider);
    return MaterialApp.router(
      title: 'Flow',
      theme: ThemeData(
        primarySwatch: flowColor,
        // textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      routeInformationParser: YeetInformationParser(),
      routerDelegate: YeeterDelegate(yeet: yeet),
    );
  }
}
