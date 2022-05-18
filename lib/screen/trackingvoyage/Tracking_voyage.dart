// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:anchor_vendor/appbar.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../TextStyle.dart';

class Tracking_voyage extends StatelessWidget {
  Tracking_voyage({Key? key}) : super(key: key);
  static const name = 'Tracking_voyage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: appbar_back_button(context, 'Tracking Voyage'),
            body: SlidingUpPanel(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                // margin: ,
                minHeight: MediaQuerypage.screenHeight! * 0.04,
                maxHeight: MediaQuerypage.screenHeight! * 0.7,
                padding: const EdgeInsets.all(8.0),
                panel: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    centerTitle: true,
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    bottom: PreferredSize(
                      preferredSize: Size(
                        MediaQuerypage.screenWidth!,
                        MediaQuerypage.screenHeight! * 0.1,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Center(
                              child: Icon(Icons.maximize,
                                  size: 60, color: Colors.grey),
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/dp_client.png'),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Jenifer Smith',
                                            style: Textstyle.header2bold),
                                        Text(
                                            'CEO, Fedex Shipping Organization, CTG'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          color: Colors.blue,
                          child: ListTile(
                            title: Text(
                              'Leave From ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Traffic Mor, Block B16, Pabna ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.adjust,
                          ),
                          title: Text(
                            'Arrived',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Traffic Mor, Block B16, Pabna ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.adjust,
                          ),
                          title: Text(
                            'Arrived',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Traffic Mor, Block B16, Pabna ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),ListTile(
                          leading: Icon(
                            Icons.adjust,
                          ),
                          title: Text(
                            'Arrived',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Traffic Mor, Block B16, Pabna ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.adjust,
                          ),
                          title: Text(
                            'Next to ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Traffic Mor, Block B16, Pabna ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),ListTile(
                          leading: Icon(
                            Icons.adjust,
                          ),
                          title: Text(
                            'Next to',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Traffic Mor, Block B16, Pabna ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
                body: Image(
                  width: MediaQuerypage.screenWidth,
                  height: MediaQuerypage.screenHeight,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/maps.png'),
                ))));
  }
}
