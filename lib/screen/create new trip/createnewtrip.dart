// ignore_for_file: override_on_non_overriding_member, must_be_immutable, prefer_const_constructors, prefer_final_fields

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/Services/floor_services/models/new_products_model.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/loadingPost.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/showalert.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/create_trip_controller.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:table_calendar/table_calendar.dart';

CreateTripController createTripController = CreateTripController();

class CreateNewTrip extends StatelessWidget {
  MyFloorDatabase database;

  CreateNewTrip({Key? key, required this.database}) : super(key: key);
  static const name = 'createnewtrip';

  //**
  //* varibale
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
                          showaDialog(context, database);
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
                    StreamBuilder<List<Products>>(
                      stream: database.productsDao.getAllProducts(),
                      builder: (_, snapshot) {
                        if (!snapshot.hasData) {
                          return SizedBox(
                            height: 1,
                          );
                        }

                        final products = snapshot.requireData;

                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: products.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              onTap: () {},
                              leading: Text((index + 1).toString()),
                              title:
                                  Text(products[index].productName.toString()),
                              /*trailing: Checkbox(
                                checkColor: Colors.white,
                                activeColor: Appcolor.lightBlue,
                                value: true,
                                onChanged: (value) {},
                              ),*/
                            );
                          },
                        );
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        LoadingPort(context, "loading");
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
                          LoadingPort(context, "unloading");
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
                        onChanged: (val) => print(val),
                        // validator: (val) {
                        //   print(val);
                        //   return null;
                        // },
                        //onSaved: (val) => print(val),
                      ),
                    ),
                    SizedBox(height: 100),
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
