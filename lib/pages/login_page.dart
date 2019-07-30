import 'package:flutter/material.dart';

import '../auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _status = 'no-action';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        child: Center(
          child: RaisedButton(
              onPressed: () {
                setState(() {
                  _status = 'loading';
                });

                AuthService().login().then(
                  (result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      setState(() {
                        _status = 'rejected';
                      });
                    }
                  },
                );
              },
              child: Text('Login for App ($_status})')),
        ),
      ),
    );
  }
}
