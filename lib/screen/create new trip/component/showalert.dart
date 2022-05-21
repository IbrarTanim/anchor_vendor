// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/itemsName.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/component/seconddialog.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

ProductsController productsController = ProductsController();

showaDialog(BuildContext context) {
  //fetch data
  productsController.fetchProductData();

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
              Text(
                'What kind of goods do you do you want to bring by using ANCHOR?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuerypage.fontsize! * 18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical! * 2,
                ),
                child: Text('Help us to give you better service',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuerypage.fontsize! * 12)),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'search',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              Obx(() => productsController.isUpdated.value
                  ? Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: productsController.datum.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Text((index + 1).toString()),
                            title: Text(productsController.datum[index].name),
                            trailing: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Appcolor.lightBlue,
                              value: false,
                              onChanged: (value) {},
                            ),
                          );
                        },
                      ),
                    )
                  : SizedBox(height: 100.0,)),
              InkWell(
                onTap: () async {
                  secondshowaDialog(context);
                },
                child: Container(
                  height: MediaQuerypage.screenHeight! / 18,
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
            ],
          ),
        ),
      );
    },
  );
}
