// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/appbar.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Condition/condition.dart';
import 'package:flutter/material.dart';

class Acceptbid extends StatelessWidget {
  const Acceptbid({Key? key}) : super(key: key);
  static const name = 'Acceptbid';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar_back_button(context, 'Match a voyage'),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10, left: 60),
                child: const Text('Order #6b1ad3f'),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/dp_client.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maher Jein',
                            style: Textstyle.header,
                          ),
                          Text('Posted 2 hour ago, 23 offer submitted'),
                        ],
                      ),
                    ),
                  ),
                  Image(
                    width: MediaQuerypage.screenWidth!*0.2,
                    height: MediaQuerypage.screenHeight!*0.1,
                    image:  AssetImage('assets/messages.png'),)
                ],
              ),
              Divider(),
              Text(
                'Requirements:',
                style: Textstyle.textfiledtop,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                child: Text('1x Small Feeder (Up to 1000 ton)'),
              ),
              Text(
                'Distances:',
                style: Textstyle.textfiledtop,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                child: Text(
                    '''Feni to Khulna (100 km)\nKhulna to Dhaka (200 km)'''),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Product list:',
                  style: Textstyle.textfiledtop,
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Text('${index + 1}.\t\t Crap')),
                                Text('100 TON'),
                                Text(
                                  '\t(Bag)',
                                  style: TextStyle(color: Color(0xFFB1B1B1)),
                                )
                              ],
                            ),
                          ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Set your rent value now',
                    style: Textstyle.textfiledtop,
                  ),
                  Container(
                    color: Color(0xFFB1B1B1),
                    width: MediaQuerypage.screenWidth! * 0.5,
                    height: MediaQuerypage.screenHeight! * 0.05,
                    child: Center(child: Text('Rent Value')),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                  Text('I agree to this General River Notice.'),
                ],
              ),
              InkWell(
                onTap: () {
                   Navigator.pushNamed(context, Condition.name);
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
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
