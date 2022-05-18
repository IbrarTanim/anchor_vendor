// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, unused_field, non_constant_identifier_names, unused_local_variable, await_only_futures, avoid_print

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Otp/Otpui.dart';
import 'package:anchor_vendor/screen/login/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../TextStyle.dart';

//
TextEditingController mobile_number = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confrom_password = TextEditingController();
LoginController loginController = Get.put(LoginController());

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  static const name = 'login';
  //
  // controller for password view off/on
  Locale? _locale;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Appcolor.lightBlue,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.black)),
          actions: [
            Padding(
              padding: EdgeInsets.all(MediaQuerypage.smallSizeWidth! * 2),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: TextButton(
                    child: Text("বাংলা", style: TextStyle(color: Colors.white)),
                    onPressed: () {}
                    //MyApp.of(context).setLocale(Locale.fromSubtags(languageCode: 'de')),
                    ),
              ),
            ),
            TextButton(
                child: Text("English", style: TextStyle(color: Colors.black)),
                onPressed: () {}),
            SizedBox(width: MediaQuerypage.smallSizeWidth! * 2)
            //MyApp.of(context).setLocale(Locale.fromSubtags(languageCode: 'en')),
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  loginBody(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                      onTap: () async {
                        Navigator.pushNamed(context, Otpui.name);
                        // add operation which u want
                        // if (formKey.currentState!.validate()) {
                        //   // formKey.currentState.save();
                        //   int code = await loginController.login(
                        //       mobile_number.text.toString(),
                        //       password.text.toString());
                        //   if (code == 200) {
                        //     print('Login code 200');
                        //   //   var signature =
                        //   //  // await SmsAutoFill().unregisterListener();
                        //   //   print(signature);
                        //     Navigator.pushNamed(context, Otpui.name);
                        //   }
                        // }
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
                          'Next',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.01,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Appcolor.lightBlue,
                        value: true,
                        onChanged: (value) {},
                      ),
                      Expanded(
                          child: Text(
                              'রেজিস্টার সফল ভাবে সম্পন্ন করতে আপনার মোবাইল, এন-আইডি,ট্রেড লাইসেন্স, চেক বইয়ের পাতা ও ই-টিন সঙ্গে রাখুন।'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

//

// login body
Padding loginBody() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Center(
          child: Image(
            width: MediaQuerypage.screenWidth! * 0.3,
            image: AssetImage('assets/ankornid.png'),
          ),
        ),
        SizedBox(
          height: MediaQuerypage.screenHeight! * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: Text(
            "Enter Your Mobile Number",
            style: Textstyle.header2bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
            bottom: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: TextFormField(
            controller: mobile_number,
            validator: (value) {
              if (mobile_number.text.toString().length > 11) {
                return 'Enter your mobile number';
              }
            },
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Color(0xFFE9E9E9),
              filled: true,
              suffixIcon: Icon(
                Icons.cancel,
              ),
              hintText: 'Mobile Number',
              // errorText: 'Enter your mobile number'
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: Text(
            "Password",
            style: Textstyle.header2bold,
          ),
        ),
        Obx(
          () => Padding(
            padding: EdgeInsets.only(
              top: MediaQuerypage.screenHeight! * 0.01,
              bottom: MediaQuerypage.screenHeight! * 0.01,
            ),
            child: TextFormField(
              controller: password,
              validator: (value) {
                if (password.text.toString().length < 3) {
                  return 'Enter password';
                }
              },
              textInputAction: TextInputAction.next,
              obscureText: loginController.ans.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Appcolor.textfieldfillcolor,
                filled: true,
                suffixIcon: loginController.ans.value
                    ? InkWell(
                        onTap: () {
                          loginController.change();
                        },
                        child: Icon(
                          Icons.visibility_off,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          loginController.change();
                        },
                        child: Icon(
                          Icons.visibility,
                        ),
                      ),
                hintText: 'Password',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuerypage.screenHeight! * 0.01,
          ),
          child: Text("Confirm Password", style: Textstyle.header2bold),
        ),
        Obx(
          () => Padding(
            padding: EdgeInsets.only(
              top: MediaQuerypage.screenHeight! * 0.01,
              bottom: MediaQuerypage.screenHeight! * 0.01,
            ),
            child: TextFormField(
              controller: confrom_password,
              validator: (value) {
                if (password.text.toString().length !=
                    confrom_password.text.toString().length) {
                  return 'Password doesnot match.';
                }
              },
              obscureText: loginController.ans.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Color(0xFFE9E9E9),
                filled: true,
                hintText: 'Confirm password',
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
