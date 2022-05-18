// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/screen/voyage/Voyage.dart';
import 'package:flutter/material.dart';

import '../../media_query.dart';

class BuildinSuccesfull extends StatelessWidget {
  const BuildinSuccesfull({Key? key}) : super(key: key);
  static const name = 'BuildinSuccesfull';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image(
            image: AssetImage('assets/congrat.png'),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Submitted Successfully',
              style: TextStyle(
                  color: Color(0xFFBA9E42),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              '''         You've successfully offered for a ship.
               They just about to knock you.
                    Please Wait for a while.    
              ''',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFBA9E42),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: InkWell(
              onTap: () {
                // add operation which u want
                Navigator.pushNamed(context, Voyage.name);
              },
              child: Container(
                width: MediaQuerypage.screenWidth! * 0.8,
                height: MediaQuerypage.screenHeight! / 16,
                decoration: BoxDecoration(
                  color: Color(0xFFBA9E42),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:
                    Center(child: Text('Dashboard', style: Textstyle.botton)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
