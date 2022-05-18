// ignore_for_file: prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Running%20trip/runningTrip.dart';
import 'package:anchor_vendor/screen/Trip%20History/triphistory.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/createnewtrip.dart';
import 'package:anchor_vendor/screen/payment%20status/paymentstatus.dart';
import 'package:flutter/material.dart';

class Trip extends StatelessWidget {
  const Trip({Key? key}) : super(key: key);
  static const name = 'trip';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Trip',style: Textstyle.black,),
          backgroundColor: Appcolor.lightBlue,
          // leading: IconButton(
          //   onPressed: () {
          //     scaffoldkey.currentState!.openDrawer();
          //   },
          //   icon: Icon(
          //     Icons.menu,
          //   ),
          // ),
          actions: [],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                  vertical: MediaQuerypage.safeBlockVertical! * 2),
              child: InkWell(
                onTap: () async {
                  Navigator.pushNamed(context, CreateNewTrip.name);
                },
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
                    'Creat New Trip',
                    style: Textstyle.botton,
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                  vertical: MediaQuerypage.safeBlockVertical! * 2),
              child: InkWell(
                onTap: () async {
                  Navigator.pushNamed(context, RunningTrip.name);
                },
                child: Container(
                  width: MediaQuerypage.screenWidth,
                  height: MediaQuerypage.screenHeight! / 16,
                  decoration: BoxDecoration(
                    color:Appcolor.lightBlue,
                    //border: Border.all(color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                      child: Text(
                    'Running Trip',
                    style: Textstyle.botton,
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                  vertical: MediaQuerypage.safeBlockVertical! * 2),
              child: InkWell(
                onTap: () async {
                 Navigator.pushNamed(context, TripHistoy.name);
                },
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
                    'Trip History',
                    style: Textstyle.botton,
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                  vertical: MediaQuerypage.safeBlockVertical! * 2),
              child: InkWell(
                onTap: () async {
                  Navigator.pushNamed(context, PaymentStatus.name);
                },
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
                    'Payment Status',
                    style: Textstyle.botton,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
