import 'package:flutter/material.dart';

import 'auth_service.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() async {
  Widget _defaultHome = LoginPage();

  bool _result = await AuthService().login();
  if (_result) {
    _defaultHome = HomePage();
  }

  runApp(MaterialApp(
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => HomePage(),
      '/login': (BuildContext context) => LoginPage()
    },
  ));
}