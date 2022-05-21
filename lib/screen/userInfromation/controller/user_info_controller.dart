
import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/screen/userInfromation/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UserInfoController extends GetxController{

  RxBool isUpdated = false.obs;
  late Data data;

  updateValue(){
    isUpdated.value = !isUpdated.value;
  }


  fetchUserData() async{
    try{
      Dio dio = Dio();
      dio.options.headers["Authorization"] = "Bearer ${KeepuserInfromation.auth_token}";
      Response response;
      response = await dio.get(Services.vendorGetProfile + KeepuserInfromation.captain_id);
      print("On Fetch");
      if(response.statusCode == 200){
        var responseConverted = UserModel.fromJson(response.data);
        data = responseConverted.data;
        print(responseConverted);
        updateValue();
      }
    }catch (e) {
      print("Error find in http file  ${e.toString()}");
    }
  }
}