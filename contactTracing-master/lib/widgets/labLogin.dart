import 'package:flutter/material.dart';

class LabLogin extends StatefulWidget {
  @override
  _LabLoginState createState() => _LabLoginState();
}

class _LabLoginState extends State<LabLogin> {
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username,
              decoration: InputDecoration(labelText: 'Username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 17),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      )),
    );
  }
}
