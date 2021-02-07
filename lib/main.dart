import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          TextFormField(
            onSaved: (e) => username = e,
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextFormField(
            obscureText: true,
            onSaved: (e) => password = e,
            decoration: InputDecoration(labelText: "Password"),
          ),
          MaterialButton(
            onPressed: null,
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
