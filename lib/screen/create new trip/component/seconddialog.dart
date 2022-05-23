// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/Services/floor_services/models/new_products_model.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/SavedProductInfo.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/itemsName.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/create_trip_controller.dart';
import 'package:flutter/material.dart';
import 'package:floor/floor.dart';
import 'package:fluttertoast/fluttertoast.dart';

//CreateTripController createTripController = CreateTripController();
// state: 0 => bulk, 1 => bag, 2 =>bundle
//bundle: 0 => M/T, 1 => KGs, 2 => bundle, 3 => other
TextEditingController quantityController = TextEditingController();

secondshowaDialog(BuildContext context, MyFloorDatabase database) {
  print(SavedProductInfo.productId.toString() + " - - info page");
  print(SavedProductInfo.productName + " - - info page");

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: MediaQuerypage.screenHeight! * 0.8,
          width: MediaQuerypage.screenWidth! * 0.8,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Tell more about your goods'),
              ExpansionTile(
                title: Text(SavedProductInfo.productName),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                      title: Text('State'),
                      onTap: () {
                        print(SavedProductInfo.state.toString());
                        BuildContext dialog1Context;
                        showDialog(
                          context: context,
                          builder: (context) {
                            dialog1Context = context;
                            return AlertDialog(
                              title: Center(
                                  child: Text('Select Your Product State')),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.state = 0;
                                      Navigator.pop(dialog1Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('BULk')),
                                  ),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.state = 1;
                                      Navigator.pop(dialog1Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('Bag')),
                                  ),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.state = 2;
                                      Navigator.pop(dialog1Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('Bundle')),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                  ListTile(
                      title: Text('Bundle'),
                      onTap: () {
                        print(SavedProductInfo.bundle.toString());
                        BuildContext dialog2Context;
                        showDialog(
                          context: context,
                          builder: (context) {
                            dialog2Context = context;
                            return AlertDialog(
                              title: Center(
                                  child: Text('Select Your Product Bundle')),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.bundle = 0;
                                      Navigator.pop(dialog2Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('M/T')),
                                  ),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.bundle = 1;
                                      Navigator.pop(dialog2Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('KGs')),
                                  ),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.bundle = 2;
                                      Navigator.pop(dialog2Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('Bundle')),
                                  ),
                                  SizedBox(
                                    height: MediaQuerypage.smallSizeHeight!,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      SavedProductInfo.bundle = 3;
                                      Navigator.pop(dialog2Context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuerypage.screenWidth! * 0.5,
                                        height:
                                            MediaQuerypage.screenHeight! * 0.05,
                                        color: Appcolor.grey,
                                        alignment: Alignment.center,
                                        child: Text('Others')),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                  //
                  TextField(
                    controller: quantityController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Quantity',
                    ),
                    onChanged: (value) {
                      if (quantityController.text.isNotEmpty) {}
                    },
                  )
                ],
              ),
              InkWell(
                onTap: () async {
                  double quantityGet =
                      double.parse(quantityController.text.toString());
                  //productInfoController.addProductToDB(double.parse(quantityController.text.toString()));
                  if (SavedProductInfo.state != -1 &&
                      SavedProductInfo.bundle != -1 &&
                      quantityGet != 0.0) {
                    var products = Products(
                        product_id: SavedProductInfo.productId,
                        productName: SavedProductInfo.productName,
                        state: SavedProductInfo.state,
                        bundle: SavedProductInfo.bundle,
                        quantity: quantityGet);
                    database.productsDao.insertProduct(products);
                    SavedProductInfo.state = -1;
                    SavedProductInfo.bundle = -1;
                    Navigator.pop(context);
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please provide valid info.",
                        textColor: Colors.black,
                        backgroundColor: Colors.lightBlue,
                        gravity: ToastGravity.BOTTOM,
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 16.0);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical!),
                  child: Container(
                    height: MediaQuerypage.screenHeight! / 18,
                    decoration: BoxDecoration(
                      color: Appcolor.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
      );
    },
  );
}
