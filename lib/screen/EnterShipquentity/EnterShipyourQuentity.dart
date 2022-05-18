// ignore_for_file: prefer_const_constructors, file_names

import 'package:anchor_vendor/screen/EnterShipquentity/component/buttom.dart';
import 'package:anchor_vendor/screen/EnterShipquentity/component/shipinfo_get.dart';
import 'package:flutter/material.dart';
import '../../TextStyle.dart';

class YourShipquentity extends StatelessWidget {
  const YourShipquentity({Key? key}) : super(key: key);
  static const name = 'yourshipQuentity';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                      'What kind of ships do you have? \n       How many are they?',
                      style: Textstyle.header2bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Center(
                  child: Text('Ensure your client a better service',
                      style: Textstyle.header2grey),
                ),
              ),
              Divider(),
              shipinfoget(),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  Expanded(
                    child: Text(
                        'I Confirm that this license is valid and the owner of it will\ntake the responsibilities if there occur any unethical event.'),
                  )
                ],
              ),
              button(context),
            ],
          ),
        ),
      ),
    ));
  }
}
