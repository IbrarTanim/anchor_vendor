
import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductsController extends GetxController{

  late List<Datum> datum;

  RxBool isUpdated = false.obs;
  updateValue(){
    isUpdated.value = !isUpdated.value;
  }

  fetchProductData() async{
    try{
      Dio dio = Dio();
      dio.options.headers["Authorization"] = "Bearer ${KeepuserInfromation.auth_token}";
      Response response;
      response = await dio.get(Services.vendorGetProducts);
      print("On Fetch");
      if(response.statusCode == 200){
        var responseConverted = ProductsModel.fromJson(response.data);
        datum = responseConverted.data;
        print(responseConverted);
        updateValue();
      }
    }catch (e) {
      print("Error find in http file  ${e.toString()}");
    }
  }
}