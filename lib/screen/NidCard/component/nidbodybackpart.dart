// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/NidCard/controller/nidController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';


//  **variable
NidController nidController = Get.find<NidController>();
Column parttwo() {
  return Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      // add view item
      Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 20.0),
        child: Text(
          'Upload your NID back part ',
          style: TextStyle(fontSize: 16, color: Color(0xFFBA9E42)),
        ),
      ),
      InkWell(
        onTap:(){
           nidController.Nid_back_pickImageFromGallery();
        },
        child: Padding(
        padding: EdgeInsets.all(MediaQuerypage.smallSizeWidth! * 2),
        child: Obx(
          () => nidController.nid_back_imageFile.value.isEmpty
              ? Image(
                  image: AssetImage('assets/nidimage1.png'),
                )
              : Image.file(
                  File(nidController.nid_back_imageFile.value.toString()),
                ),
        ),
          ),
      ),
    ],
  );
}
