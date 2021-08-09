class AuthService {
  Future<String?> login({
    required String username,
    required String password,
  }) async {
    await Future.delayed(Duration(seconds: 2));
    if (username == 'hossein' && password == '1234') {
      return 't$username';
    }
    return null;
  }

  Future<bool> logout() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }
}
