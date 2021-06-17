import 'dart:developer';

import 'package:contactTracing/services/metrics/deviceMetrics.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:contactTracing/widgets/labLogin.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String _image =
  //     'https://c8.alamy.com/comp/HXN8D3/a-cartoon-illustration-of-a-doctor-looking-scared-HXN8D3.jpg';
  Widget _information({String title, String subtitle, VoidCallback tap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: Metrics.deviceWidth(context) / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(
                            text: '$subtitle',
                            style: TextStyle(color: Colors.blue[400]),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => tap)),
                  ],
                ),
              ),
              Image.asset('assets/images/manymask.jpg',
                  width: Metrics.deviceWidth(context) / 3)
              // Image.network(_image, width: Metrics.deviceWidth(context) / 3)
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(Metrics.deviceWidth(context) / 30))),
      ),
    );
  }

  Widget _health({String title, String subtitle, VoidCallback tap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: Metrics.deviceWidth(context) / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(
                            text: '$subtitle',
                            style: TextStyle(color: Colors.blue[400]),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => tap)),
                  ],
                ),
              ),
              Image.asset('assets/images/meter.jpg',
                  width: Metrics.deviceWidth(context) / 3)
              //Image.network(_image, width: Metrics.deviceWidth(context) / 3)
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(Metrics.deviceWidth(context) / 30))),
      ),
    );
  }

  Widget _patient({String title, String subtitle, VoidCallback tap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: Metrics.deviceWidth(context) / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '$subtitle',
                        style: TextStyle(color: Colors.blue[400]),
                        recognizer: TapGestureRecognizer()..onTap = () => tap,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/kazi1.png',
                  width: Metrics.deviceWidth(context) / 3)
              //Image.network(_image, width: Metrics.deviceWidth(context) / 3)
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(Metrics.deviceWidth(context) / 30))),
      ),
    );
  }

  Widget _labtech({String title, String subtitle}) {
    return GestureDetector(
      onTap: () => {
        setState(() => {Navigator.pushNamed(context, '/labLog')})
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: Metrics.deviceWidth(context) / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$title',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                        text: '$subtitle',
                        style: TextStyle(color: Colors.blue[400]),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () =>
                        //       {Navigator.pushNamed(context, '/lablog')}
                      ))
                    ],
                  ),
                ),
                Image.asset('assets/images/doct.png',
                    width: Metrics.deviceWidth(context) / 3)
                //Image.network(_image, width: Metrics.deviceWidth(context) / 3)
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(Metrics.deviceWidth(context) / 30))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10),
            child: Text('Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          _information(
              title: 'What you can do to protect yourself',
              subtitle: 'Find Out More'),
          _health(
              title: 'What can you do to protect others',
              subtitle: 'Find Out More'),
          _patient(title: "how the application works", subtitle: 'learn more'),
          _labtech(title: 'lab tech panel', subtitle: 'login')
        ],
      ),
    );
  }
}
