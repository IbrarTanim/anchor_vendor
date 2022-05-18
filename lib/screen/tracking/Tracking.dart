// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/tracking/view.dart';
import 'package:flutter/material.dart';

class Tracking extends StatelessWidget {
  const Tracking({Key? key}) : super(key: key);
  static const name = 'tracking';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text('Tracking', style: Textstyle.black),
              backgroundColor: Appcolor.lightBlue,
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                      child: ListView.separated(
                          itemCount: 20,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Navigator.pushNamed(context, View.name);
                              },
                              // leading: Text('dk-ch'),
                              title: Text(
                                'ID-#jhk125024 SundorBon-8',
                                style: TextStyle(color: Colors.black),
                              ),
                              subtitle: Text(
                                'It is a long established fact that a reader...',
                              ),
                              trailing: Column(
                                children: [
                                  CircleAvatar(
                                    radius: MediaQuerypage.pixel! * 5,
                                    backgroundColor: index % 2 == 0
                                        ? Colors.red
                                        : Colors.green,
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(index % 2 == 0
                                          ? Icons.close
                                          : Icons.done),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text('dk-ch'),
                                ],
                              ),
                            );
                          })),
                ],
              ),
            )));
  }
}
