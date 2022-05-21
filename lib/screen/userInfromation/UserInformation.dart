// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/userInfromation/controller/user_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

UserInfoController userController = UserInfoController();

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);
  static const name = 'userinfo';

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    userController.fetchUserData();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
          backgroundColor: Appcolor.lightBlue,
          elevation: 0.0,
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text("Edit"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                foregroundColor: MaterialStateProperty.all(Colors.black)
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: ,
                  children: [
                    Center(child: Image(image: AssetImage('assets/user.png'))),
                    SizedBox(
                      height: MediaQuerypage.screenHeight! * 0.02,
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        alignment: Alignment.centerLeft,
                        height: MediaQuerypage.screenHeight! * 0.05,
                        width: MediaQuerypage.screenWidth,
                        child: Text('Name: '),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        alignment: Alignment.centerLeft,
                        height: MediaQuerypage.screenHeight! * 0.05,
                        width: MediaQuerypage.screenWidth,
                        child: Obx(() => userController.isUpdated.value
                            ? Text("Mobile: " + userController.data.number)
                            : Text("Mobile")),
                      ),
                    ),
                    /*Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: MediaQuerypage.safeBlockHorizontal! * 2),
                      alignment: Alignment.centerLeft,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      width: MediaQuerypage.screenWidth,
                      child: Text('Email: '),
                    ),*/
                    /*SizedBox(
                      height: MediaQuerypage.screenHeight! * 0.01,
                    ),*/
                    /*Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                          left: MediaQuerypage.safeBlockHorizontal! * 2),
                      alignment: Alignment.centerLeft,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      width: MediaQuerypage.screenWidth,
                      child: Text('Company: '),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, left: MediaQuerypage.safeBlockHorizontal! * 2),
                      child: Text(
                        'Nid Front Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Obx(() => userController.isUpdated.value
                        ? userController.data.nidFront != null &&
                                userController.data.nidFront
                                    .toString()
                                    .isNotEmpty
                            ? Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.network(userController.data.nidFront),
                            )
                            : Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image(image: AssetImage('assets/nid.jpg')),
                            )
                        : Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image(image: AssetImage('assets/nid.jpg')),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: MediaQuerypage.safeBlockHorizontal! * 2),
                      child: Text(
                        'Nid Back Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Obx(() => userController.isUpdated.value
                        ? userController.data.nidBack != null &&
                        userController.data.nidBack
                            .toString()
                            .isNotEmpty
                        ? Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.network(userController.data.nidBack),
                        )
                        : Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image(image: AssetImage('assets/nid.jpg')),
                        )
                        : Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image(image: AssetImage('assets/nid.jpg')),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: MediaQuerypage.safeBlockHorizontal! * 2),
                      child: Text(
                        'Licece Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Obx(() => userController.isUpdated.value
                        ? userController.data.license != null &&
                        userController.data.license
                            .toString()
                            .isNotEmpty
                        ? Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.network(userController.data.license),
                        )
                        : Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image(image: AssetImage('assets/nid.jpg')),
                        )
                        : Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image(image: AssetImage('assets/nid.jpg')),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, left: MediaQuerypage.safeBlockHorizontal! * 2),
                      child: Text(
                        'Cheque Part',
                        style: Textstyle.userinfromation_imageheader,
                      ),
                    ),
                    Obx(() => userController.isUpdated.value
                        ? userController.data.cheque != null &&
                        userController.data.cheque
                            .toString()
                            .isNotEmpty
                        ? Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.network(userController.data.cheque),
                    )
                        : Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image(image: AssetImage('assets/nid.jpg')),
                    )
                        : Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image(image: AssetImage('assets/nid.jpg')),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
