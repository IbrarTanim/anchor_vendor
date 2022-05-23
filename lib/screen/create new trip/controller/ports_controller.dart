
import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/screen/create%20new%20trip/Model/port_response_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PortsController extends GetxController{

  late List<Datum> allPorts;

  RxBool isUpdated = false.obs;
  //RxList<Datum> allProducts = <Datum>[].obs;

  updateValue(){
    isUpdated.value = true;
  }

  fetchProductData() async{
    try{
      Dio dio = Dio();
      dio.options.headers["Authorization"] = "Bearer ${KeepuserInfromation.auth_token}";
      Response response;
      response = await dio.get(Services.vendorGetPorts);
      print("On Fetch");
      if(response.statusCode == 200){
        var responseConverted = PortResponseModel.fromJson(response.data);
        allPorts = responseConverted.data;
        updateValue();
      }
    }catch (e) {
      print("Error find in http file  ${e.toString()}");
    }
  }

}