import 'package:flutter/material.dart';
import 'package:objetivo_dia_app/components/login_component.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[800],
        child: Center(
          child: LoginComponent()
        ),
      ),
    );
  }
}
