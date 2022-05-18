// ignore_for_file: prefer_const_constructors, unnecessary_import, file_names, annotate_overrides, overridden_fields

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/screen/NidCard/NidCard.dart';
import 'package:anchor_vendor/screen/registation/registation.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../TextStyle.dart';
import '../../media_query.dart';

class Otpui extends StatefulWidget {
  Otpui({Key? key}) : super(key: key);
  static const name = 'Otpui';

  @override
  State<Otpui> createState() => _OtpuiState();
}

class _OtpuiState extends State<Otpui> with CodeAutoFill {
  String? otpCode;
  String? appSignature;

  @override
  void codeUpdated() {
    setState(() {
      otpCode = code!;
    });
  }

  @override
  void initState() {
    super.initState();
    listenthecode();
  }

  listenthecode() async {
    await SmsAutoFill().listenForCode();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

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
        backgroundColor: Appcolor.lightBlue,
        title: Text(
          'OTP verification',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
                child: Text(
              'Enter Your Verification Code',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 30),
              child: Text(
                'A verification code sent to your phone. Your code will expire within 30 minute',
                style: TextStyle(fontSize: 12, color: Color(0xFFB1B1B1)),
              ),
            ),
            PinFieldAutoFill(
              decoration: BoxLooseDecoration(
                  gapSpace: 20,
                  strokeColorBuilder:
                      PinListenColorBuilder(Colors.grey, Colors.grey),
                  bgColorBuilder: PinListenColorBuilder(
                      Color(0xFFECF2FE), Color(0xFFECF2FE))),
              currentCode: otpCode,
              codeLength: 6,
              onCodeChanged: (code) {
                if (code!.length == 6) {
                  Navigator.pushNamed(context, Ragistation.name);
                }
              },
            ),
            Spacer(),
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
                    color: Appcolor.lightBlue,
                    //border: Border.all(color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                      child: Text(
                    'Submit Code',
                    style: Textstyle.botton,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
