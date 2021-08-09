import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pf/state_notifiers/auth_state_notifier.dart';
import 'package:pf/widgets/my_app_bar.dart';

const _verticalPadding = SizedBox(height: 20);

class LoginPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = useState(true);
    final authStateNotifier = ref.watch(authStateNotifierProvider.notifier);
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Spacer(),
              FlutterLogo(
                size: 100,
              ),
              _verticalPadding,
              TextField(
                decoration: InputDecoration(hintText: 'Username'),
              ),
              _verticalPadding,
              TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscure.value
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                    ),
                    onPressed: () {
                      isObscure.value = !isObscure.value;
                    },
                  ),
                  hintText: 'Password',
                ),
                obscureText: isObscure.value,
              ),
              _verticalPadding,
              ElevatedButton(
                onPressed: () {
                  authStateNotifier.login(
                    username: 'hossein',
                    password: '1234',
                  );
                },
                child: Text('Login'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
