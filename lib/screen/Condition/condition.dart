// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/building%20succesfull/buildingsuccesful.dart';
import 'package:flutter/material.dart';

import '../../TextStyle.dart';

class Condition extends StatelessWidget {
  const Condition({Key? key}) : super(key: key);
  static const name = 'condition';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black)),
                Padding(
                  padding:
                      EdgeInsets.only(left: MediaQuerypage.screenWidth! * 0.04),
                  child: Text(
                    'Conditions before order',
                    style: Textstyle.header,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuerypage.screenWidth! * 0.1,
                top: MediaQuerypage.screenWidth! * 0.01,
                bottom: MediaQuerypage.screenWidth! * 0.04,
              ),
              child: Text(
                  'Read the terms and conditions and accept \nsincerely for hiring a ship.'),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => Text(
                        '''Condition ${index + 1}.\t 1. A. Sand Container bulkhead ship will not move from this rate.
'''))),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, BuildinSuccesfull.name);
              },
              child: Container(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! / 16,
                decoration: BoxDecoration(
                  color: Color(0xFFBA9E42),
                  //border: Border.all(color: Color(0xFFB1B1B1)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
