import 'package:flutter/material.dart';
import 'package:simplegetx/ui/home_screen.dart';
import 'package:simplegetx/ui/login_screen.dart';
import 'package:simplegetx/ui/unknown_screen.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case 'home':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => UnknownScreen(),
        );
    }
  }
}