
import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/screen/Otp/model/otp_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OTPController extends GetxController{

  register(String mobile, String otp) async {
    int code = 0;
    try {
      /*String app = await SmsAutoFill().getAppSignature;
      print(app);*/
      Response response;
      response = await Dio().post(Services.vendorOTPVerification, queryParameters: {
        /*'appsingnature': app,
        'phone': mobile,
        'password': password*/
        'number' : mobile,
        'otp' : otp
      });
      if (response.statusCode == 200) {
        OTPModel info = OTPModel.fromJson(response.data);
        KeepuserInfromation.captain_id = info.data.id.toString();
        KeepuserInfromation.auth_token = info.data.token;
        print(KeepuserInfromation.captain_id);
        //KeepuserInfromation.otp_message = info.message.toString();
        code = response.statusCode!;
      }
    } catch (e) {
      print("Error find in http file  ${e.toString()}");
    }
    return code;
  }
}