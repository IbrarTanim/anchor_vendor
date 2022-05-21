import 'dart:io';

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/updateProfile/controller/update_controller.dart';
import 'package:anchor_vendor/screen/userInfromation/UserInformation.dart';
import 'package:anchor_vendor/screen/userInfromation/controller/user_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//variables
UserInfoController userController = UserInfoController();
UpdateController updateController = UpdateController();
TextEditingController nameController = TextEditingController();
TextEditingController numberController = TextEditingController();

class UpdateProfile extends StatelessWidget {
  UpdateProfile({Key? key}) : super(key: key);

  static const name = 'UpdateProfile';
  final _formKey = GlobalKey<FormState>();
  var userName = 'Name';

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Update Profile'),
            backgroundColor: Appcolor.lightBlue,
            elevation: 0.0),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: ,
                    children: [
                      Center(
                        child: InkWell(
                            onTap: () {
                              updateController.profilePickFromGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Obx(() => updateController
                                      .profile_imageFile.value.isEmpty
                                  ? const Image(
                                      image: AssetImage('assets/nidimage1.png'))
                                  : Image.file(File(updateController
                                      .profile_imageFile.value
                                      .toString()))),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuerypage.screenHeight! * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.02,
                          bottom: MediaQuerypage.screenHeight! * 0.02,
                        ),
                        child: TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: const Color(0xFFE9E9E9),
                            filled: true,
                            hintText: userName,
                            // errorText: 'Enter your mobile number'
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0,
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        child: Text(
                          'Nid Front Part',
                          style: Textstyle.userinfromation_imageheader,
                        ),
                      ),
                      Center(
                        child: InkWell(
                            onTap: () {
                              updateController.nidFrontPickFromGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Obx(() => updateController
                                      .nid_front_imageFile.value.isEmpty
                                  ? const Image(
                                      image: AssetImage('assets/nidimage1.png'))
                                  : Image.file(File(updateController
                                      .nid_front_imageFile.value
                                      .toString()))),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20,
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        child: Text(
                          'Nid Back Part',
                          style: Textstyle.userinfromation_imageheader,
                        ),
                      ),
                      Center(
                        child: InkWell(
                            onTap: () {
                              updateController.nidBackPickFromGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Obx(() => updateController
                                      .nid_back_imageFile.value.isEmpty
                                  ? const Image(
                                      image: AssetImage('assets/nidimage1.png'))
                                  : Image.file(File(updateController
                                      .nid_back_imageFile.value
                                      .toString()))),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20,
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        child: Text(
                          'Licece Part',
                          style: Textstyle.userinfromation_imageheader,
                        ),
                      ),
                      Center(
                        child: InkWell(
                            onTap: () {
                              updateController.licenseFromGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Obx(() => updateController
                                      .license_imageFile.value.isEmpty
                                  ? const Image(
                                      image: AssetImage('assets/nidimage1.png'))
                                  : Image.file(File(updateController
                                      .license_imageFile.value
                                      .toString()))),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20,
                            left: MediaQuerypage.safeBlockHorizontal! * 2),
                        child: Text(
                          'Cheque Part',
                          style: Textstyle.userinfromation_imageheader,
                        ),
                      ),
                      Center(
                        child: InkWell(
                            onTap: () {
                              updateController.chequeFromGallery();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Obx(() => updateController
                                      .cheque_imageFile.value.isEmpty
                                  ? const Image(
                                      image: AssetImage('assets/nidimage1.png'))
                                  : Image.file(File(updateController
                                      .cheque_imageFile.value
                                      .toString()))),
                            )),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () async {
                            int responseCode = await updateController
                                .updateProfile(nameController.text.toString());

                            if (responseCode == 200) {
                              Fluttertoast.showToast(
                                  msg: "Profile Updated.",
                                  textColor: Colors.black,
                                  backgroundColor: Colors.green,
                                  gravity: ToastGravity.BOTTOM,
                                  toastLength: Toast.LENGTH_SHORT,
                                  fontSize: 16.0);

                              Route route = MaterialPageRoute(
                                  builder: (context) => UserInformation());
                              Navigator.pushReplacement(context, route);
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Please try again.",
                                  textColor: Colors.black,
                                  backgroundColor: Colors.lightBlue,
                                  gravity: ToastGravity.BOTTOM,
                                  toastLength: Toast.LENGTH_SHORT,
                                  fontSize: 16.0);
                            }
                          },
                          child: Container(
                            width: MediaQuerypage.screenWidth,
                            height: MediaQuerypage.screenHeight! / 16,
                            decoration: BoxDecoration(
                              color: Appcolor.lightBlue,
                              //border: Border.all(color: Color(0xFFB1B1B1)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Center(
                                child: Text(
                              'Update Profile',
                              style: Textstyle.botton,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
