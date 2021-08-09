import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pf/state_notifiers/auth_state_notifier.dart';
import 'package:pf/views/home_page.dart';

import 'views/login_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final brightnessProvider = StateProvider((_) => Brightness.light);

class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(brightnessProvider).state;
    final authState = ref.watch(authStateNotifierProvider);
    return MaterialApp(
      theme:
          brightness == Brightness.light ? ThemeData.light() : ThemeData.dark(),
      title: 'Persian Flutter Demo',
      home: authState.when(
        authenticated: (_) => HomePage(),
        loading: () => LoadingView(),
        unauthenticated: () => LoginPage(),
      ),
    );
  }
}

class LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
