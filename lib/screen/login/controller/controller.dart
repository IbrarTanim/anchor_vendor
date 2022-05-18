// ignore_for_file: unused_local_variable, avoid_print

import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/screen/login/model/otp_infoget.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sms_autofill/sms_autofill.dart';

class LoginController extends GetxController {
  RxBool ans = true.obs;
  change() {
    ans.value = !ans.value;
  }

  login(String mobile, String password) async {
    int code = 0;
    try {
      String app = await SmsAutoFill().getAppSignature;
      print(app);
      Response response;
      response = await Dio().post(Services.login, queryParameters: {
        'appsingnature': app,
        'phone': mobile,
        'password': password
      });
      if (response.statusCode == 200) {
        Otp_Info info = Otp_Info.fromMap(response.data);
        //**
        //**store captain id in root userinfo model */
        // */
        KeepuserInfromation.captain_id = info.captainId.toString();
        KeepuserInfromation.otp_message = info.message.toString();
        code = response.statusCode!;
      }
    } catch (e) {
      print("Error find in http file  ${e.toString()}");
    }
    return code;
  }
}
