// ignore_for_file: prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';
import 'component/voyage specification_appbar.dart';

class ShipInfo extends StatelessWidget {
  const ShipInfo({Key? key}) : super(key: key);
  static const name = 'shipinfo';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: voyage_specification_appbar(context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 18),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assets/ship.png'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Small Feeder', style: TextStyle(fontSize: 20)),
                          Text('Up to 1000 TON',
                              style: TextStyle(color: Colors.grey)),
                          Text('03:00 AM \nSeptember 10, 202',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
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
                    Text(
                      'Majumdar Para, Rothghor, Pabna',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 4, top: 12.0, bottom: 12),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 12,
                        child: Icon(
                          Icons.trip_origin,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Stop location',
                        style: TextStyle(fontSize: 16),
                      ),
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
                    Text(
                      'Traffic Mor, Pabna',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ]),
            ),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Product Description',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
                height: MediaQuerypage.screenHeight! * 0.3,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text('${index + 1}.\t\t Crap')),
                              Text('100 TON'),
                              Text(
                                '\t(Bag)',
                                style: TextStyle(color: Color(0xFFB1B1B1)),
                              )
                            ],
                          ),
                        ))),
            // for make spaceing
            Expanded(
              child: SizedBox(),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! / 16,
                decoration: BoxDecoration(
                  color: Appcolor.lightBlue,
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
