// ignore_for_file: override_on_non_overriding_member, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_const_constructors, file_names, invalid_use_of_protected_member, unused_local_variable

import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/Match%20voyage/component/drower.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import '../../../Appcolor.dart';
import 'Model/model.dart';
import 'service & controller/Match_apicontroller.dart';

// variable
//
GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
MatchVoyageController controller=Get.put(MatchVoyageController());
//**
// */
Match_voyage(BuildContext context) {
  return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldkey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
          ),
        ),
        title: Text(
          'BID',
          style: Textstyle.header,
        ),
      ),
      drawer: match_drower(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              '''Here's list of the newest cargo shipment orders by customers''',
              style: Textstyle.header2grey,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Appcolor.textfieldfillcolor,
                  filled: true,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuerypage.screenHeight! * 0.03,
            ),
            Expanded(
              child: Obx( ()=>  
              // GetBuilder<MatchVoyageController>(
              //   init: MatchVoyageController(),
              //   builder: (controller) =>
                 ListView.builder(
                    itemCount: controller.data.value.length,
                    itemBuilder: (context, index) {
                      Post p = controller.data.value[index];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuerypage.screenWidth! * 0.15,
                                        top: MediaQuerypage.screenWidth! * 0.03,
                                        bottom:
                                            MediaQuerypage.screenWidth! * 0.03,
                                        right:
                                            MediaQuerypage.screenWidth! * 0.03),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                p.users.name,
                                                style: Textstyle.searchName,
                                              ),
                                              Text(p.loadingTime +
                                                  " " +
                                                  p.loadingDate),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          'items ' +
                                              p.items.toString() +
                                              p.users.companyName +
                                              " ",
                                          style: Textstyle.header2grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          p.loadLng + " Ton",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        VerticalDivider(
                                          color: Colors.black,
                                          thickness: 2,
                                        ),
                                        Text(p.updatedAt.hour.toString(),
                                            style: TextStyle(fontSize: 14))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: MediaQuerypage.screenWidth! * 0.08,
                            foregroundImage:
                                // NetworkImage(p.users.profilePhotoUrl)
                                AssetImage('assets/dp.png'),
                          ),
                        ],
                      );
                    }
                    ),
              ),
            )
          ],
        ),
      ));
}
