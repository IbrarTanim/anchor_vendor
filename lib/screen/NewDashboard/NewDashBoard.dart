// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Good/Goods.dart';
import 'package:anchor_vendor/screen/NewDashboard/component/newDashboard_bottomNaviagtionBar.dart';
import 'package:anchor_vendor/screen/new%20Home/NewHome.dart';
import 'package:anchor_vendor/screen/tracking/Tracking.dart';
import 'package:anchor_vendor/screen/trip/trip.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../TextStyle.dart';

class NewDashboard extends StatelessWidget {
  NewDashboard({Key? key}) : super(key: key);
  static const name = 'NewDashboard';
  //**
  //*variable
  //
  // */
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
      key: scaffoldkey,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Home',
            style: Textstyle.black,
          ),
          backgroundColor: Appcolor.lightBlue,
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuerypage.safeBlockVertical! * 2,
                horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                    width: MediaQuerypage.screenWidth! * 0.5,
                    image: AssetImage('assets/ankornid.png'),
                  ),
                ),
                SizedBox(height: MediaQuerypage.screenHeight! * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Goods.name);
                      },
                      child: Container(
                        width: MediaQuerypage.screenWidth! * 0.2,
                        height: MediaQuerypage.screenHeight! / 16,
                        decoration: BoxDecoration(
                          color: Appcolor.lightBlue,
                          //border: Border.all(color: Color(0xFFB1B1B1)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(
                            child: Text(
                          'Goods',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Tracking.name);
                      },
                      child: Container(
                        width: MediaQuerypage.screenWidth! * 0.2,
                        height: MediaQuerypage.screenHeight! / 16,
                        decoration: BoxDecoration(
                          color: Appcolor.lightBlue,
                          //border: Border.all(color: Color(0xFFB1B1B1)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(
                            child: Text(
                          'Tracking',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Trip.name);
                      },
                      child: Container(
                        width: MediaQuerypage.screenWidth! * 0.2,
                        height: MediaQuerypage.screenHeight! / 16,
                        decoration: BoxDecoration(
                          color: Appcolor.lightBlue,
                          //border: Border.all(color: Color(0xFFB1B1B1)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(
                            child: Text(
                          'Trip',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, NewHome.name);
                      },
                      child: Container(
                        width: MediaQuerypage.screenWidth! * 0.2,
                        height: MediaQuerypage.screenHeight! / 16,
                        decoration: BoxDecoration(
                          color: Appcolor.lightBlue,
                          //border: Border.all(color: Color(0xFFB1B1B1)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(
                            child: Text(
                          'Home',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        bottomNavigationBar: newDashboard_bottomNavigationbar(),
      ),
    ));
  }
}
