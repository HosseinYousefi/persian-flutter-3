import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pf/models/auth_state.dart';
import 'package:pf/services/auth_service.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return AuthStateNotifier(authService);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;
  AuthStateNotifier(this._authService) : super(AuthState.unauthenticated());

  Future<void> login({
    required String username,
    required String password,
  }) async {
    state = AuthState.loading();
    final result =
        await _authService.login(username: username, password: password);
    if (result == null) {
      state = AuthState.unauthenticated();
    } else {
      state = AuthState.authenticated(token: result);
    }
  }

  Future<void> logout() {
    state = AuthState.unauthenticated();
    return _authService.logout();
  }
}
