import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flow_app/domain/auth/auth_failure.dart';
import 'package:flow_app/domain/auth/user.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = _Unathenticated;
  const factory AuthState.authenticated({
    required User user,
  }) = Authenticated;
  const factory AuthState.loading() = _Loading;
}
