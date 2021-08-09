import 'package:flutter/material.dart';
import 'package:pf/widgets/my_app_bar.dart';

const _verticalPadding = SizedBox(height: 20);

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    icon: Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {},
                  ),
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              _verticalPadding,
              ElevatedButton(
                onPressed: () {},
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
