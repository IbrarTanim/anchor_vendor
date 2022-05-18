// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/login/login.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Image(image: AssetImage('assets/ankornid.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Login.name);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.center,
                    width: MediaQuerypage.screenWidth,
                    height: MediaQuerypage.screenHeight! * 0.055,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9E9E9),
                      //border: Border.all(color: Color(0xFFB1B1B1)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuerypage.smallSizeWidth! * 6,
                              right: MediaQuerypage.smallSizeWidth! * 8),
                          child: Icon(
                            Icons.mail_outline,
                          ),
                        ),
                        Text(
                          'Lg in with Email/Phone No',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! * 0.055,
                decoration: BoxDecoration(
                  color: Color(0xFF1976D3),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image(image: AssetImage('assets/facebook.png'))),
                    Expanded(
                        flex: 4,
                        child: Text(
                          'Continue with Facebook',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! * 0.055,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFB1B1B1)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image(image: AssetImage('assets/google.png'))),
                    Expanded(
                        flex: 4,
                        child: Text(
                          'Continue with Facebook',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Powered by ',
                style: TextStyle(color: Colors.grey, fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Real Time Solution',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
