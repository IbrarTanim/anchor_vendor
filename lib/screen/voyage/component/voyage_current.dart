// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';

ListView vogaye_current() {
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (context, index) => Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  width: MediaQuerypage.screenWidth! * 0.25,
                  height: MediaQuerypage.screenHeight! * 0.03,
                  child: Center(
                    child: Text(
                      'CANCELLED ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  '100000',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Small Feeder', style: Textstyle.header2bold),
                  Text('September 10, 2021', style: Textstyle.header2grey),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Up to 1000 Ton', style: Textstyle.header2grey),
                  Text('3.00 AM', style: Textstyle.header2grey),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 15,
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text('Majumdar Para, Rothghor, Pabna',
                          style: Textstyle.header2bold),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 4, top: 12.0, bottom: 12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          radius: 12,
                          child: Icon(
                            Icons.trip_origin,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text('Stop location', style: Textstyle.header2bold),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Appcolor.lightBlue,
                        radius: 15,
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text('Traffic Mor, Pabna', style: Textstyle.header2bold),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
