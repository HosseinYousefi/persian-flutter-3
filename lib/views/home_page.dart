import 'package:flutter/material.dart';
import 'package:pf/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {},
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
