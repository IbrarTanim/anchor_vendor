// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names, invalid_use_of_protected_member, avoid_print

import 'package:anchor_vendor/Services/Services.dart';
import 'package:anchor_vendor/screen/Match%20voyage/Model/model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MatchVoyageController extends GetxController {
  RxList<Post> data = RxList<Post>();
  @override
  void onInit() async {
    await getdata();
    super.onInit();
  }

  getdata() async {
    print('Data get api method called');
    try {
      Response response;
      response = await Dio().get(Services.matchVoyage);
      if (response.statusCode == 200) {
        Map<String, dynamic> apidata = await response.data;
        for (var d in apidata['posts']) {
          data.value.add(Post.fromMap(d));
          print('data get${d.toString()}');
        }
      }
      data.value.toSet().toList();
    } catch (e) {
      print('Error find in service class ${e.toString()}');
    }
    // update();
  }
}
