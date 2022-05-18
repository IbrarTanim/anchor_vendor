// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);
  static const name = 'userinfo';
  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: ,
                  children: [
                    Center(child: Image(image: AssetImage('assets/user.png'))),
                    SizedBox(
                      height: MediaQuerypage.screenHeight! * 0.02,
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        alignment: Alignment.centerLeft,
                        height: MediaQuerypage.screenHeight! * 0.05,
                        width: MediaQuerypage.screenWidth,
                        child: Text('Name meac caancacn'),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        alignment: Alignment.centerLeft,
                        height: MediaQuerypage.screenHeight! * 0.05,
                        width: MediaQuerypage.screenWidth,
                        child: Text('Mobile meac caancacn'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: MediaQuerypage.safeBlockHorizontal! * 2),
                      alignment: Alignment.centerLeft,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      width: MediaQuerypage.screenWidth,
                      child: Text('Email meac caancacn'),
                    ),
                    SizedBox(
                      height: MediaQuerypage.screenHeight! * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: MediaQuerypage.safeBlockHorizontal! * 2),
                      alignment: Alignment.centerLeft,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      width: MediaQuerypage.screenWidth,
                      child: Text('Company meac caancacn'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.05),
                      child: Text(
                        'Nid Front Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Image(image: AssetImage('assets/nid.jpg')),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.05),
                      child: Text(
                        'Nid Back Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Image(image: AssetImage('assets/nid.jpg')),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.05),
                      child: Text(
                        'Licece Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Image(image: AssetImage('assets/nid.jpg')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
