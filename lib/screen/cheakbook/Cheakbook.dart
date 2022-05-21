// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, file_names

import 'dart:io';

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/appbar.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/NewDashboard/NewDashBoard.dart';
import 'package:anchor_vendor/screen/cheakbook/controller/checkbook_controller.dart';
import 'package:anchor_vendor/screen/congratution/Congratuation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

ChequeBookController chequeBookController = ChequeBookController();

class CheakBook extends StatelessWidget {
  const CheakBook({Key? key}) : super(key: key);
  static const name = 'CheakBook';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_back_button(context, 'Cheque Book'),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/ankornid.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Identification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'Capture and upload your Cheque Book',
                    style: TextStyle(color: Color(0xFFBA9E42), fontSize: 18),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Image(
                      image: AssetImage('assets/nidimage4.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: InkWell(
                      onTap: () {
                        chequeBookController.chequeImageCapture();
                      },
                      child: Obx(() =>
                          chequeBookController.chequeImageFile.value.isEmpty
                              ? Image(
                                  image: AssetImage('assets/nidimage3.png'),
                                )
                              : Image.file(File(chequeBookController
                                  .chequeImageFile.value
                                  .toString()))),
                    ),
                  ),
                  /**
                   * buttom add
                   */
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                      onTap: () async {
                        // add operation which u want
                        // Navigator.pushNamed(context, Congratutation.name);
                        // add operation which u want
                        if (chequeBookController
                            .chequeImageFile.value.isNotEmpty) {
                          int resCode = await chequeBookController.uploadFile();
                          if (resCode == 200) {
                            Fluttertoast.showToast(
                                msg: "Cheque uploaded.",
                                textColor: Colors.black,
                                backgroundColor: Colors.green,
                                gravity: ToastGravity.BOTTOM,
                                toastLength: Toast.LENGTH_SHORT,
                                fontSize: 16.0);
                            Navigator.pushNamed(context, Congratutation.name);
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
                              msg: "Please upload cheque image.",
                              textColor: Colors.black,
                              backgroundColor: Colors.lightBlue,
                              gravity: ToastGravity.BOTTOM,
                              toastLength: Toast.LENGTH_SHORT,
                              fontSize: 16.0);
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
                  //**
                  //*Skif butto
                  //*//

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                      onTap: () {
                        // add operation which u want
                        //Skif button
                        Navigator.pushNamed(context, NewDashboard.name);
                      },
                      child: Container(
                        width: MediaQuerypage.screenWidth,
                        height: MediaQuerypage.screenHeight! / 16,
                        decoration: BoxDecoration(
                          color: Appcolor.lightBlue,
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
                ]),
          ),
        ),
      ),
    );
  }
}
