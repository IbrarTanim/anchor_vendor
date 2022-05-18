// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/setting/settingui.dart';
import 'package:flutter/material.dart';

class Messageingui extends StatelessWidget {
  Messageingui({Key? key}) : super(key: key);
  static const name = 'Messageingui';
  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_outlined,
              size: 30,
              color: Colors.black,
            )),
        title: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/dp_client.png'),
          ),
          title: Text(
            'Jennifer Smith',
            style: TextStyle(color: Colors.black),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          trailing: Icon(
            Icons.more_horiz_outlined,
            color: Appcolor.lightBlue,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuerypage.screenHeight! * 0.8,
          width: MediaQuerypage.screenWidth,
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: (index % 2 == 0)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/dp_client.png'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: (index % 2 == 0)
                                          ? 4.0
                                          : MediaQuerypage.screenWidth! * 0.2,
                                      right: (index % 2 == 0)
                                          ? MediaQuerypage.screenWidth! * 0.2
                                          : 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          "Messageng to other ...uibibubu bububububobobtr  tcdrdrdcc7cgftf bycy gvycyt tttcc v7ttfv ."),
                                    ),
                                  ),
                                ),
                              ),
                              //  Spacer(), //
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuerypage.screenWidth! * 0.2,
                                      right: 4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          "Messageng to other ...uibibubu bububububobobtr  tcdrdrdcc7cgftf bycy gvycyt tttcc v7ttfv ."),
                                    ),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/dp_client.png'),
                              ), //
                            ],
                          ),
                  )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pushNamed(context, SettingUi.name);
        },
      ),
    ));
  }
}
