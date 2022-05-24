import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/Services/floor_services/models/new_products_model.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/SavedProductInfo.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/post_products_model.dart' as post_product;
import 'package:anchor_vendor/screen/create%20new%20trip/component/biwta_policy_dialog.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/create_trip_controller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showInvoiceDialog(BuildContext context, MyFloorDatabase database, CreateTripController controller) {
  BuildContext dialogContext;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        dialogContext = context;
        return AlertDialog(
          contentPadding: const EdgeInsets.all(0),
          insetPadding: const EdgeInsets.all(0),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 8.0, right: 8.0, bottom: 8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage('assets/ship.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(SavedProductInfo.shipName,
                                  style: const TextStyle(fontSize: 20)),
                              /*Text('Up to 1000 TON',
                                  style: TextStyle(color: Colors.grey)),*/
                              Text(
                                  '${SavedProductInfo.time} \n${SavedProductInfo.date}',
                                  style: const TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                      vertical: MediaQuerypage.safeBlockVertical! * 2),
                  child: Column(children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: MediaQuerypage.pixel! * 5,
                          child: Icon(
                            Icons.arrow_upward,
                            size: MediaQuerypage.pixel! * 8,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth!,
                        ),
                        Text(
                          SavedProductInfo.loadingPortName,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                        vertical: MediaQuerypage.safeBlockVertical! * 2,
                        /*left: MediaQuerypage.smallSizeWidth! * 1.5,
                        top: MediaQuerypage.smallSizeHeight!,
                        bottom: MediaQuerypage.smallSizeHeight!,*/
                      ),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: MediaQuerypage.pixel! * 4.5,
                            child: Icon(
                              Icons.trip_origin,
                              size: MediaQuerypage.pixel! * 6,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuerypage.smallSizeWidth!,
                          ),
                          const Text(
                            'Stop location',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Appcolor.lightBlue,
                          radius: MediaQuerypage.pixel! * 5,
                          child: Icon(
                            Icons.arrow_downward,
                            size: MediaQuerypage.pixel! * 8,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuerypage.smallSizeWidth!,
                        ),
                        Text(
                          SavedProductInfo.unloadingPortName,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ]),
                ),
                const Divider(
                  thickness: 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                      vertical: MediaQuerypage.safeBlockVertical! * 2),
                  child: const Text(
                    'Product Description',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: StreamBuilder<List<Products>>(
                    stream: database.productsDao.getAllProducts(),
                    builder: (_, snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox(
                          height: 1,
                        );
                      }

                      final products = snapshot.requireData;

                      if(products.isNotEmpty){
                        controller.products.clear();
                        for(Products product in products){
                          if(controller.products.every((element) => element.product_id != product.product_id)){
                            controller.addProduct(post_product.Products(product_id: product.product_id!, state: product.state!, bundle: product.bundle!, quantity: product.quantity!));
                          }
                        }
                      }


                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: products.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () {},
                            leading: Text((index + 1).toString()),
                            title: Text(products[index].productName.toString()),
                            // state: 0 => bulk, 1 => bag, 2 =>bundle
                            // bundle: 0 => M/T, 1 => KGs, 2 => bundle, 3 => other
                            trailing: Text(
                                "${products[index].quantity}${products[index].bundle == 0 ? "M/T" : products[index].bundle == 1 ? "KGs" : products[index].bundle == 2 ? "bundle" : "other"}(${products[index].state == 0 ? "bulk" : products[index].state == 1 ? "bag" : "bundle"})"),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 50, right: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(dialogContext);
                      showBIWTADialog(context, database, controller);
                      /*if(SavedProductInfo.loadingPortId != -1 &&
                          SavedProductInfo.unloadingPortId != -1
                          && SavedProductInfo.date.isNotEmpty
                          && SavedProductInfo.time.isNotEmpty
                          && shipNameController.text.toString() != null
                          && shipNameController.text.toString().isNotEmpty){
                        //TODO show dialog of invoice
                        SavedProductInfo.shipName = shipNameController.text.toString();
                        showInvoiceDialog(context, database);
                      }else{
                        Fluttertoast.showToast(
                            msg: "Please provide all information first.",
                            textColor: Colors.black,
                            backgroundColor: Colors.lightBlue,
                            gravity: ToastGravity.BOTTOM,
                            toastLength: Toast.LENGTH_SHORT,
                            fontSize: 16.0);
                      }*/
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
                        'Next',
                        style: Textstyle.botton,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
