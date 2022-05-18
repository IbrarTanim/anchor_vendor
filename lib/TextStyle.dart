// ignore_for_file: prefer_const_constructors, unnecessary_import, file_names, non_constant_identifier_names

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textstyle {
  static TextStyle black = TextStyle(color: Colors.black);
  static TextStyle textfiledtop = TextStyle(
    fontSize: MediaQuerypage.fontsize! * 16,
    fontFamily: 'Poppins',
  );
  static TextStyle searchName = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static TextStyle header2grey = TextStyle(
    color: Color(0xFFB1B1B1),
    fontSize: 16,
  );
  static TextStyle userinfromation_imageheader = TextStyle(
    color: Appcolor.lightBlue,
    fontSize: 16,
  );
  static TextStyle header2bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static TextStyle header2 = TextStyle(
    fontSize: 18,
  );
  static TextStyle header = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );
  static TextStyle botton = TextStyle(
    // fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black,
  );
  static TextStyle dashboardheader = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.white,
  );
}
