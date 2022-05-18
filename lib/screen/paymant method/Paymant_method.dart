// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/appbar.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/trackingvoyage/Tracking_voyage.dart';
import 'package:flutter/material.dart';

class Paymant_method extends StatelessWidget {
  Paymant_method({Key? key}) : super(key: key);
  static const name = 'Paymant_method';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appbar_back_button(context, "Paymant method"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuerypage.screenHeight! * 0.1,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(
                          image: AssetImage('assets/mediacard.png'),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image(
                          image: AssetImage('assets/visa.png'),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 10, bottom: 10, right: 14),
                        child: Image(
                          image: AssetImage('assets/rokeat.png'),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 10, bottom: 10, right: 14),
                        child: Image(
                          image: AssetImage('assets/upow.png'),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 8, bottom: 8, right: 14),
                        child: Image(
                          image: AssetImage('assets/nogod.png'),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 8, bottom: 8, right: 14),
                        child: Image(
                          image: AssetImage('assets/bekash.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Cardholder name', style: Textstyle.textfiledtop),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Color(0xFFE9E9E9),
                    filled: true,
                    hintText: 'Cardholder name',
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! * 0.17,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Card Number',
                              style: Textstyle.textfiledtop,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
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
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Date',
                              style: Textstyle.textfiledtop,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Color(0xFFE9E9E9),
                                filled: true,
                                hintText: 'Date',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'CCV',
                              style: Textstyle.textfiledtop,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fillColor: Color(0xFFE9E9E9),
                              filled: true,
                              hintText: 'CCV',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ammount',
                      style: Textstyle.textfiledtop,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Color(0xFFE9E9E9),
                      filled: true,
                      hintText: 'Ammount',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Appcolor.lightBlue,
                      child: Text(
                        'i',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                        ' Credit Card payments may take up to 24h to be processed',
                        style: TextStyle(color: Colors.grey)),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Appcolor.lightBlue,
                      child: Text(
                        '?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Appcolor.lightBlue,
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Appcolor.lightBlue,
                        //fillColor: MaterialStateProperty.resolveWith(Appcolor.yelloxd),
                        value: true,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Text('\t Save my payment details for future purchases')
                  ],
                ),
              ),
              // Spacer(),
              SizedBox(height: MediaQuerypage.screenHeight! * 0.1),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Tracking_voyage.name);
                },
                child: Container(
                  width: MediaQuerypage.screenWidth,
                  height: MediaQuerypage.screenHeight! / 16,
                  decoration: BoxDecoration(
                    color: Color(0xFFBA9E42),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
