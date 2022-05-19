// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, file_names

import 'dart:io';

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/appbar.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/cheakbook/Cheakbook.dart';
import 'package:anchor_vendor/screen/license/controller/license_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

LicenseController licenseController = LicenseController();

class License extends StatelessWidget {
  const License({Key? key}) : super(key: key);
  static const name = 'License';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar_back_button(context, 'License Paper'),
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
                    'Capture and upload your License Paper',
                    style: TextStyle(color: Color(0xFFBA9E42), fontSize: 18),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Image(
                      image: AssetImage('assets/nidimage2.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: InkWell(
                      //TODO
                      onTap: () {
                        licenseController.licenseImageCapture();
                      },
                      child: Obx(() =>
                          licenseController.licenseImageFile.value.isEmpty
                              ? Image(
                                  image: AssetImage('assets/nidimage3.png'),
                                )
                              : Image.file(File(licenseController
                                  .licenseImageFile.value
                                  .toString()))),
                    ),
                  ),
                  /**
                   * button add
                   */
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                      onTap: () async {
                        // add operation which u want
                        if (licenseController
                            .licenseImageFile.value.isNotEmpty) {
                          int resCode = await licenseController.uploadFile();
                          if (resCode == 200) {
                            Navigator.pushNamed(context, CheakBook.name);
                          }
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
                        //skif button
                        Navigator.pushNamed(context, CheakBook.name);
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
