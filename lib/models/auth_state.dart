import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authenticated({
    required String token,
  }) = Authenticated;
  const factory AuthState.loading() = Loading;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
