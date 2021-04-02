import 'package:flow_app/application/auth/auth_bloc.dart';
import 'package:flow_app/application/auth/login_bloc.dart';
import 'package:flow_app/common/flow_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';
import 'package:lottie/lottie.dart';

class AuthView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final authState = useProvider(authBlocProvider.state);
    final loginState = useProvider(loginBlocProvider.state);
    final loginBloc = useProvider(loginBlocProvider);
    // ternary operator:
    // condition ? ifitstrue : ifitsfalse
    return Scaffold(
      backgroundColor: FlowColorsBackground.mainColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.pink,
            ),
            SizedBox(
              height: 20.0,
            ),
            Lottie.asset('assets/yoga_floating.json'),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'FLOW',
              style: GoogleFonts.kellySlab(
                  fontSize: 40.0, color: Colors.pink.shade700),
            ),
            Text(
              'RISE & SHINE',
              style: GoogleFonts.kellySlab(
                  fontSize: 40.0, color: Colors.pink.shade700),
            ),
            SizedBox(height: 30.0),
            authState.when(
              loading: () => Center(child: CircularProgressIndicator()),
              authenticated: (user) {
                Future.delayed(Duration(milliseconds: 300)).then((_) {
                  context.yeet('/home');
                });
                return Center(child: Text('Welcome ${user.id}'));
              },
              unauthenticated: () => Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        onChanged: (value) {
                          loginBloc.emailChanged(value);
                        },
                        decoration: InputDecoration(
                          errorText: loginState.emailError,
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        onChanged: (value) {
                          loginBloc.passwordChanged(value);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          errorText: loginState.passwordError,
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          loginBloc.loginPressed();
                        },
                        child: Text('Sign in'),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          loginBloc.registerPressed();
                        },
                        child: Text('Register'),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            context.yeet('/reset-pass');
                          },
                          child: Text('Forgot password?'))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
