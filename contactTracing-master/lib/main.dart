import 'package:flutter/material.dart';
import 'package:contactTracing/widgets/home.dart';
import 'package:contactTracing/widgets/labLogin.dart';

void main() {
  runApp(new MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Contact Tracing',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      // home: HomePage(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.

        '/labLog': (context) => LabLogin(),
      }
  )
  );

}


