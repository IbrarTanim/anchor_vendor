// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable

import 'dart:io';

import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/screen/NidCard/NidCard.dart';
import 'package:anchor_vendor/screen/registation/controller/registationcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../media_query.dart';

//***
//**variabel
// */ */
TextEditingController user_name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController company = TextEditingController();
RegistationController registationController = Get.put(RegistationController());

//**
//calss ui
// */
class Ragistation extends StatelessWidget {
  Ragistation({Key? key}) : super(key: key);
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Body(context),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  onTap: () {
                    // add operation which u want
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
                      'Next',
                      style: TextStyle(fontSize: 18),
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

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
//**
//** */ body part
//*/
Padding Body(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal!,
        vertical: MediaQuerypage.safeBlockVertical!),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Obx(
            () => InkWell(
              onTap: () {
                //add operation
                registationController.pickImageFromGallery();
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: registationController.imageFile.value.isEmpty
                    ? Image(
                        image: AssetImage('assets/userpic.png'),
                      )
                    : Image.file(
                        File(registationController.imageFile.value.toString()),
                      ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuerypage.screenHeight! * 0.04,
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: MediaQuerypage.screenHeight! * 0.03,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: Text(
            "Name",
            style: Textstyle.textfiledtop,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
            bottom: MediaQuerypage.screenHeight! * 0.02,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Color(0xFFE9E9E9),
              filled: true,
              hintText: 'Your Name',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: Text(
            "Mobile Number",
            style: Textstyle.textfiledtop,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
            bottom: MediaQuerypage.screenHeight! * 0.02,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Color(0xFFE9E9E9),
              filled: true,
              hintText: 'Your Mobile Number',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: Text(
            "Company",
            style: Textstyle.textfiledtop,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
            bottom: MediaQuerypage.screenHeight! * 0.02,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Color(0xFFE9E9E9),
              filled: true,
              hintText: 'Your company name',
            ),
          ),
        ),
      ],
    ),
  );
}
