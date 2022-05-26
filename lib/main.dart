import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplegetx/binding/bindings.dart';
import 'package:simplegetx/routes/routes.dart';
import 'package:simplegetx/ui/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple getX',
      initialBinding: InjectBinding(),
      onGenerateRoute: Routes().onGenerateRoute,
      initialRoute: 'login',
    );
  }
}
