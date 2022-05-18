
 // ignore_for_file: prefer_const_constructors, non_constant_identifier_names
 
import 'package:anchor_vendor/Appcolor.dart';
import 'package:flutter/material.dart';

 appbar_back_button(BuildContext context,String value)=>AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 1.0,
        backgroundColor:Appcolor.lightBlue,
        title: Text(
          value,
          style: TextStyle(color: Colors.black),
        ),
      );