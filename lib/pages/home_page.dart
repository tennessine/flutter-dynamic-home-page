import 'package:flutter/material.dart';

import '../auth_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text('Welcome to App!'),
            FlatButton(
              onPressed: () {
                AuthService().logout().then((_) => Navigator.of(context).pushReplacementNamed('/login'));
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
