import 'package:anchor_vendor/Appcolor.dart';
import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/TextStyle.dart';
import 'package:anchor_vendor/media_query.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/SavedProductInfo.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/post_products_model.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/controller/create_trip_controller.dart';
import 'package:anchor_vendor/screen/trip/trip.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

showBIWTADialog(BuildContext context, MyFloorDatabase database,
    CreateTripController controller) {
  var checkBoxCheckedValue = false;
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
                const Expanded(
                    child: SingleChildScrollView(
                        child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Policy Information"),
                ))),
                Obx(
                  () => controller.checkBoxCheckedValue.value
                      ? CheckboxListTile(
                          title: const Text(
                              "I have read BIWTA policy and i agree with all the terms."),
                          checkColor: Colors.white,
                          activeColor: Appcolor.lightBlue,
                          value: true,
                          onChanged: (value) {
                            controller.updateCheckBox();
                            print(controller.checkBoxCheckedValue.value);
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        )
                      : CheckboxListTile(
                          title: const Text(
                              "I have read BIWTA policy and i agree with all the terms."),
                          checkColor: Colors.white,
                          activeColor: Appcolor.lightBlue,
                          value: false,
                          onChanged: (val) {
                            controller.updateCheckBox();
                            print(controller.checkBoxCheckedValue.value);
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 50, right: 50, bottom: 10),
                  child: InkWell(
                    onTap: () async {
                      if (controller.checkBoxCheckedValue.value) {
                        if (controller.products.isNotEmpty) {
                          PostProductModel finalModel = PostProductModel(
                              vendor_id:
                                  int.parse(KeepuserInfromation.captain_id),
                              loading_port_id: SavedProductInfo.loadingPortId,
                              unloading_port_id:
                                  SavedProductInfo.unloadingPortId,
                              products: controller.products,
                              biwta_check: 1);
                          int responseFinalCode =
                              await controller.createTripApi(finalModel);
                          if (responseFinalCode == 200) {
                            await database.productsDao.deleteAllProducts();
                            SavedProductInfo.shipName = '';
                            SavedProductInfo.productId = 0;
                            SavedProductInfo.productName = '';
                            SavedProductInfo.state = -1;
                            SavedProductInfo.bundle = -1;
                            SavedProductInfo.loadingPortId = -1;
                            SavedProductInfo.loadingPortName = '';
                            SavedProductInfo.unloadingPortId = -1;
                            SavedProductInfo.unloadingPortName = '';
                            SavedProductInfo.date = '';
                            SavedProductInfo.time = '';
                            Fluttertoast.showToast(
                                msg: "Success",
                                textColor: Colors.black,
                                backgroundColor: Colors.green,
                                gravity: ToastGravity.BOTTOM,
                                toastLength: Toast.LENGTH_SHORT,
                                fontSize: 16.0);
                            Get.delete<CreateTripController>();
                            Navigator.pop(dialogContext);
                            Route route = MaterialPageRoute(
                                builder: (context) => Trip());
                            Navigator.pushReplacement(context, route);
                          } else {
                            Fluttertoast.showToast(
                                msg: "Failed",
                                textColor: Colors.black,
                                backgroundColor: Colors.lightBlue,
                                gravity: ToastGravity.BOTTOM,
                                toastLength: Toast.LENGTH_SHORT,
                                fontSize: 16.0);
                          }
                        }
                      } else {
                        Fluttertoast.showToast(
                            msg: "Please accept terms and condition.",
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
      });
}
