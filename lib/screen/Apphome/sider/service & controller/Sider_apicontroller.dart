// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names, invalid_use_of_protected_member

import 'package:anchor_vendor/screen/Apphome/sider/Model/model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class Slide_Api_Controller extends GetxController {
  RxList<Post> data=RxList<Post>();

  // 
  final String apiurl = 'https://anchor.sameergroup.net/api/posts';
  getdata() async {
    try {
      Response response;
      response = await Dio().get(apiurl);
      if (response.statusCode == 200) {
        Map<String, dynamic> apidata = await response.data;
        for (var d in apidata['posts']) {
        data.value.add(Post.fromMap(d));
        }
      }
      data.value.toSet().toList();

    } catch (e) {
      print('Error find in service class ${e.toString()}');
    }
    update();
  }
}
