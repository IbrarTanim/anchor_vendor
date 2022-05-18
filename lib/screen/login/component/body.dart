// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/login/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

// controller for password view off/on
LoginController loginController = Get.put(LoginController());
//
TextEditingController mobile_number = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confrom_password = TextEditingController();
// login body
Column loginBody() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      Image(
        image: AssetImage('assets/ankornid.png'),
      ),
      SizedBox(
        height: MediaQuerypage.screenHeight! *0.02,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Enter Your Mobile Number",
          style: Textstyle.header2,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
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
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Password",
          style: Textstyle.header2,
        ),
      ),
      Obx(
        () => Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: password,
            validator: (value) {
              if (password.text.toString().length >= 6) {}
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
        padding: const EdgeInsets.all(10.0),
        child: Text("Confirm Password", style: Textstyle.header2),
      ),
      Obx(
        () => Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: confrom_password,
            validator: (value) {
              if (password.text.toString().length ==
                  confrom_password.text.toString().length) {}
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
  );
}
