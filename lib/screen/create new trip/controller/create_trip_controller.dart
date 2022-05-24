import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/Services/floor_services/floor_database.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/post_products_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CreateTripController extends GetxController {
  int checkVar = -1;

  RxBool checkBoxCheckedValue = false.obs;

  updateCheckBox() {
    checkBoxCheckedValue.value = !checkBoxCheckedValue.value;
  }

  List<Products> products = <Products>[].obs;

  addProduct(Products product) {
    products.add(product);
    print("Item Count: ${products.length}");
  }

  //create trip
  createTripApi(PostProductModel model) async {
    int responseCode = 0;

    try {
      Dio dio = Dio();
      Response response;
      response = await dio.post(Services.vendorCreateTrip,
          data: model.toJson(),
          options: Options(headers: {
            "accept": "*/*",
            "Authorization": "Bearer ${KeepuserInfromation.auth_token}",
            "Content-Type": "application/x-www-form-urlencoded",
            "Content-type": "application/json"
          }));

      if (response.statusCode == 200) {
        //var responseConverted = DefaultSuccessResponse.fromJson(response.data);
        print("Create trip status : ${response.statusCode}");
        responseCode = response.statusCode!;
      }
    } catch (e) {
      print("Error find in http file  ${e.toString()}");
    }

    return responseCode;
  }
}
