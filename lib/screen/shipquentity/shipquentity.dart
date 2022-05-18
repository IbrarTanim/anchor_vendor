// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:anchor_vendor/screen/congratution/Congratuation.dart';
import 'package:anchor_vendor/screen/shipquentity/component/shipbodypart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../media_query.dart';
import 'controller/shipquentitycontroller.dart';

class Shipquentiy extends StatelessWidget {
  Shipquentiy({Key? key}) : super(key: key);
  static const name = 'shipquentity';
  // controller
  ShipController shipController = Get.put(ShipController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            shipInfoitems(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Congratutation.name);
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
              padding: const EdgeInsets.only(top: 8.0),
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
