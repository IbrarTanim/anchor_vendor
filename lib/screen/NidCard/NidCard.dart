// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/NidCard/controller/nidController.dart';
import 'package:anchor_vendor/screen/license/License.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../appbar.dart';
import 'component/NidBody.dart';

// controller for tabber view
NidController nidController = Get.put(NidController());

class NidCard extends StatelessWidget {
  const NidCard({Key? key}) : super(key: key);
  static const name = 'NidCard';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appbar_back_button(context, 'NID Card'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
        children: [
          NidBody(),
           /*
          next button
          */
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () async {
                // add operation which u want
                if(nidController.isFrontTaken.value && nidController.isBackTaken.value){
                  int responseCode = await nidController.uploadFiles();
                  if(responseCode == 200){
                    Fluttertoast.showToast(
                        msg: "NID files uploaded.",
                        textColor: Colors.black,
                        backgroundColor: Colors.green,
                        gravity: ToastGravity.BOTTOM,
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 16.0);
                    Navigator.pushNamed(context, License.name);
                  }else{
                    Fluttertoast.showToast(
                        msg: "Please try again.",
                        textColor: Colors.black,
                        backgroundColor: Colors.lightBlue,
                        gravity: ToastGravity.BOTTOM,
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 16.0);
                  }
                }else{
                  Fluttertoast.showToast(
                      msg: "Please upload NID front/back image.",
                      textColor: Colors.black,
                      backgroundColor: Colors.lightBlue,
                      gravity: ToastGravity.BOTTOM,
                      toastLength: Toast.LENGTH_SHORT,
                      fontSize: 16.0);
                  print(nidController.isFrontTaken.value);
                }
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
                  'Next',
                  style: Textstyle.botton,
                )),
              ),
            ),
          ),
          /*
          // Skif button
          */
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
              onTap: () {
                // add operation which u want
                Navigator.pushNamed(context, License.name);
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
                  'Skip',
                  style: Textstyle.botton,
                )),
              ),
            ),
          ),
        ],
          ),
        ),
      ),
    ));
  }
}
