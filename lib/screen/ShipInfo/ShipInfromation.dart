// ignore_for_file: prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/voyage/component/voyage%20specification_appbar.dart';
import 'package:flutter/material.dart';

class ShipInfomation extends StatelessWidget {
  const ShipInfomation({Key? key}) : super(key: key);
  static const name = 'ship_info';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: voyage_specification_appbar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
              vertical: MediaQuerypage.safeBlockVertical! * 2),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 1,
                  opacity: 2.1,
              image: AssetImage('assets/ankornid.png'),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerypage.safeBlockHorizontal!),
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
                          padding:  EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text('Small Feeder',
                                  style: TextStyle(fontSize: 20)),
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
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                      vertical: MediaQuerypage.safeBlockVertical! * 2),
                  child: Column(children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: MediaQuerypage.pixel! * 5,
                          child: Icon(
                            Icons.arrow_upward,
                            size: MediaQuerypage.pixel! * 8,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth!,
                        ),
                        Text(
                          'Majumdar Para, Rothghor, Pabna',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuerypage.smallSizeWidth! * 1.5,
                        top: MediaQuerypage.smallSizeHeight!,
                        bottom: MediaQuerypage.smallSizeHeight!,
                      ),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: MediaQuerypage.pixel! * 4.5,
                            child: Icon(
                              Icons.trip_origin,
                              size: MediaQuerypage.pixel! * 6,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuerypage.smallSizeWidth!,
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
                          radius: MediaQuerypage.pixel! * 5,
                          child: Icon(
                            Icons.arrow_downward,
                            size: MediaQuerypage.pixel! * 8,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth!,
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
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical!,
                      horizontal: MediaQuerypage.safeBlockHorizontal!),
                  child: Text(
                    'Product Description',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.4,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: MediaQuerypage.safeBlockVertical!,
                                  horizontal:
                                      MediaQuerypage.safeBlockHorizontal! * 3),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text('${index + 1}.\t\t Crap')),
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
        ),
      ),
    );
  }
}
