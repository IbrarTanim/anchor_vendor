// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../Appcolor.dart';
import '../../../TextStyle.dart';

shipinfoget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 10),
        child: Text(
          'Ship Name',
          style: Textstyle.textfiledtop,
        ),
      ),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Appcolor.textfieldfillcolor,
          filled: true,
          hintText: 'Your Ship Name',
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 10),
        child: Text(
          'Ship Serial Number',
          style: Textstyle.textfiledtop,
        ),
      ),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Appcolor.textfieldfillcolor,
          filled: true,
          hintText: 'Ship Serial',
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 10),
        child: Text(
          'Ship license',
          style: Textstyle.textfiledtop,
        ),
      ),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Appcolor.textfieldfillcolor,
          filled: true,
          hintText: 'Ship license',
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Image(
            image: AssetImage('assets/nidimage2.png'),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20),
          child: Image(
            image: AssetImage('assets/nidimage3.png'),
          ),
        ),
      ),
    ],
  );
}
