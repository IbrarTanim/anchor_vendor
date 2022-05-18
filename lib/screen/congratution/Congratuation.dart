// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/NewDashboard/NewDashBoard.dart';
import 'package:flutter/material.dart';

class Congratutation extends StatelessWidget {
  const Congratutation({Key? key}) : super(key: key);
  static const name = 'Congratutation';
  @override
  Widget build(BuildContext context) {
    var congratutaion_16appcolor = TextStyle(
      fontSize: 16,
      color: Color(0xFFBA9E42),
    );
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
              'Successfully Registered',
              style: TextStyle(
                  color: Color(0xFFBA9E42),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              '''You've successfully registered to anchor.''',
              style: congratutaion_16appcolor,
            ),
          ),
          Text(
            '  You just about to get an order within 1 DAY.',
            style: congratutaion_16appcolor,
          ),
          Text(
            ' Please Wait for a while.',
            style: congratutaion_16appcolor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: InkWell(
              onTap: () {
                // add operation which u want
                Navigator.pushNamed(context, NewDashboard.name);
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
