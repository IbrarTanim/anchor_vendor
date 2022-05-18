// ignore_for_file: override_on_non_overriding_member, must_be_immutable, prefer_const_constructors, prefer_final_fields

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/loadingPost.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/showalert.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CreateNewTrip extends StatelessWidget {
  CreateNewTrip({Key? key}) : super(key: key);
  static const name = 'createnewtrip';
  //**
  //* varobale
  // */
  DateTime selectedDate = DateTime.now();
  // selected date

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text('Create New Trip'),
              backgroundColor: Appcolor.lightBlue,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical! * 2,
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 3),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuerypage.safeBlockVertical! * 2),
                      child: InkWell(
                        onTap: () async {
                          showaDialog(context);
                        },
                        child: Container(
                          width: MediaQuerypage.screenWidth,
                          height: MediaQuerypage.screenHeight! / 16,
                          decoration: BoxDecoration(
                            color: Appcolor.lightBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                              child: Text(
                            'Product',
                            style: Textstyle.botton,
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        LoadingPort(context);
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
                          'Loading Port',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuerypage.safeBlockVertical! * 2),
                      child: InkWell(
                        onTap: () async {
                          LoadingPort(context);
                        },
                        child: Container(
                          width: MediaQuerypage.screenWidth,
                          height: MediaQuerypage.screenHeight! / 16,
                          decoration: BoxDecoration(
                            color: Appcolor.lightBlue,
                            //border: Border.all(color: Color(0xFFB1B1B1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                              child: Text(
                            'Unloading Port',
                            style: Textstyle.botton,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
                      ),
                      child: DateTimePicker(
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: 'd MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        icon: Icon(Icons.event),
                        dateLabelText: 'Date',
                        timeLabelText: "Hour",
                        // selectableDayPredicate: (date) {
                        //   if (date.weekday == 6 || date.weekday == 7) {
                        //     return false;
                        //   }
                        //   return true;
                        // },
                        // onChanged: (val) => print(val),
                        // validator: (val) {
                        //   print(val);
                        //   return null;
                        // },
                        // onSaved: (val) => print(val),
                      ),
                    ),
                    SizedBox(height: MediaQuerypage.screenHeight! * 0.4),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuerypage.safeBlockVertical! * 2),
                      child: InkWell(
                        onTap: () async {},
                        child: Container(
                          width: MediaQuerypage.screenWidth,
                          height: MediaQuerypage.screenHeight! / 16,
                          decoration: BoxDecoration(
                            color: Appcolor.lightBlue,
                            //border: Border.all(color: Color(0xFFB1B1B1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                              child: Text(
                            'Submit',
                            style: Textstyle.botton,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
