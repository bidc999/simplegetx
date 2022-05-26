import 'package:flutter/material.dart';
import 'package:simplegetx/ui/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                  (route) => false);
            },
            child: Text('Logout')),
      ),
    );
  }
}
