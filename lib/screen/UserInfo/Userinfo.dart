// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:anchor_vendor/screen/NidCard/NidCard.dart';
import 'package:anchor_vendor/screen/UserInfo/component/body.dart';
import 'package:flutter/material.dart';

import '../../media_query.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);
  static const name = 'UserInfo';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Text(
          'Set Your Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: Body(context)),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, NidCard.name);
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
                  'Skip',
                  style: TextStyle(fontSize: 18),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: InkWell(
                onTap: () {
                  // add operation which u want
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
                    'Next',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  
  }
}
