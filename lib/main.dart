import 'package:flutter/material.dart';
import 'package:light_for_life/main_dashboard.dart';
import 'package:light_for_life/scope_models/ModelMain.dart';
import 'package:scoped_model/scoped_model.dart';

import 'main_login.dart';
import 'main_signup.dart';
import 'normalpeople/normal_startup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  ModelMain mainModel = new ModelMain();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: mainModel,
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blue,
            accentColor: Colors.blueAccent,
            fontFamily: 'Roboto'),
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => LoginPage(),
          "/signup": (BuildContext context) => SignUpPage(),
          "/normal_startup": (BuildContext context) => NormalStartUpPage(),
          "/main_dashboard": (BuildContext context) => MainDashBoard()
        },
      ),
    );
  }
}
