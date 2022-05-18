
// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

 import 'package:anchor_vendor/media_query.dart';
import 'package:flutter/material.dart';


Padding Body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                //add operation
              },
              child: Image(
                image: AssetImage('assets/userpic.png'),
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
            padding: const EdgeInsets.only(top: 10.0, left: 10.0,bottom: 5.0),
            child: Text(
              "Name",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10,right: 10),
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
            padding: const EdgeInsets.only(top: 10.0, left: 10.0,bottom: 5.0),
            child: Text(
              "Mobile Number",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10,right: 10),
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
            padding: const EdgeInsets.only(top: 10.0, left: 10.0,bottom: 5.0),
            child: Text(
              "Company",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10,right: 10),
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