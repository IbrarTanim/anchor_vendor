// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/itemsName.dart';
import 'package:flutter/material.dart';

secondshowaDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: MediaQuerypage.screenHeight! * 0.8,
          width: MediaQuerypage.screenWidth! * 0.8,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Tell more about your goods'),
              ExpansionTile(
                title: Text(itemList_With_name[0]),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                      title: Text('State'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(
                                  child: Text('Select Your Product State')),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('BULk')),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('Bag')),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('Bundle')),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                  ListTile(
                      title: Text('Bundle'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(
                                  child: Text('Select Your Product State')),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('M/T')),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('KGs')),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('Bundle')),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  Container(
                                      width: MediaQuerypage.screenWidth! * 0.5,
                                      height:
                                          MediaQuerypage.screenHeight! * 0.05,
                                      color: Appcolor.grey,
                                      alignment: Alignment.center,
                                      child: Text('Others')),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                  //
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Quentity',
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () async {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical!),
                  child: Container(
                    height: MediaQuerypage.screenHeight! / 18,
                    decoration: BoxDecoration(
                      color: Appcolor.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                        child: Text(
                      'Submit',
                      style: Textstyle.botton,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
