// ignore_for_file: override_on_non_overriding_member, must_be_immutable, prefer_const_constructors, prefer_final_fields

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/Services/floor_services/models/new_products_model.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/SavedProductInfo.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/invoice_dialog.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/loadingPost.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/showalert.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/create_trip_controller.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

CreateTripController createTripController = CreateTripController();
TextEditingController shipNameController = TextEditingController();

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
                      padding: EdgeInsets.only(
                        top: MediaQuerypage.screenHeight! * 0.01,
                        bottom: MediaQuerypage.screenHeight! * 0.01,
                      ),
                      child: TextFormField(
                        controller: shipNameController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Color(0xFFE9E9E9),
                          filled: true,
                          hintText: 'Ship Name',
                          // errorText: 'Enter your mobile number'
                        ),
                      ),
                    ),
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
                              trailing: Text(
                                  "${products[index].quantity}${products[index].bundle == 0 ? "M/T" : products[index].bundle == 1 ? "KGs" : products[index].bundle == 2 ? "bundle" : "other"}(${products[index].state == 0 ? "bulk" : products[index].state == 1 ? "bag" : "bundle"})"),
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
                        onChanged: (val) {
                          var newDate = DateTime.parse(val);
                          //DateFormat('yyyy-MM-dd').format(val);
                          SavedProductInfo.date =
                              "${newDate.year}-${newDate.month}-${newDate.day}";
                          SavedProductInfo.time =
                              "${newDate.hour}:${newDate.minute}:${newDate.second}";
                          print("Date: ${SavedProductInfo.date}");
                          print("Time: ${SavedProductInfo.time}");
                        },
                        // validator: (val) {
                        //   print(val);
                        //   return null;
                        // },
                        //onSaved: (val) => print(val),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuerypage.safeBlockVertical! * 2),
                      child: InkWell(
                        onTap: () {
                          if (SavedProductInfo.loadingPortId != -1 &&
                              SavedProductInfo.unloadingPortId != -1 &&
                              SavedProductInfo.date.isNotEmpty &&
                              SavedProductInfo.time.isNotEmpty &&
                              shipNameController.text.toString() != null &&
                              shipNameController.text.toString().isNotEmpty) {
                            //TODO show dialog of invoice
                            SavedProductInfo.shipName =
                                shipNameController.text.toString();
                            createTripController.checkVar = 1;
                            showInvoiceDialog(context, database, createTripController);
                          } else {
                            Fluttertoast.showToast(
                                msg: "Please provide all information first.",
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
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                              child: Text(
                            'Next',
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
