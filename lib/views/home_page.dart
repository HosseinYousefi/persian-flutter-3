import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pf/state_notifiers/auth_state_notifier.dart';
import 'package:pf/widgets/my_app_bar.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateNotifier = ref.watch(authStateNotifierProvider.notifier);
    return Scaffold(
      appBar: MyAppBar(
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            authStateNotifier.logout();
          },
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          color: Colors.transparent,
          child: Center(child: Text('No news yet!')),
        ),
      ),
    );
  }
}
