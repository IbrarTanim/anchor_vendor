// ignore_for_file: file_names, non_constant_identifier_names

import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class NidController extends GetxController {
  //to control tab : true => front nid, false => back
  RxBool operation = true.obs;

  changeOperation() {
    operation.value = !operation.value;
  }

  //is image taken from gallery
  RxBool isFrontTaken = false.obs;
  RxBool isBackTaken = false.obs;

  markFrontTaken() {
    isFrontTaken.value = true;
  }

  markBackTaken() {
    isBackTaken.value = true;
  }

  var nid_front_imageFile = ''.obs;
  var nid_front_imageFileName = ''.obs;

  //Open gallery
  Nid_front_pickImageFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    nid_front_imageFile.value = image!.path;
    nid_front_imageFileName.value = image.name;
    if (nid_front_imageFile.value != null ||
        nid_front_imageFile.value.isNotEmpty) {
      markFrontTaken();
    }
  }

  var nid_back_imageFile = ''.obs;
  var nid_back_imageFileName = ''.obs;

  //Open gallery
  Nid_back_pickImageFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    nid_back_imageFile.value = image!.path;
    nid_back_imageFileName.value = image.name;
    if (nid_back_imageFile.value != null ||
        nid_back_imageFile.value.isNotEmpty) {
      markBackTaken();
    }
  }

  //upload files to server
  uploadFiles() async {

    int responseCode = 0;

    try{
      Dio dio = Dio();
      dio.options.headers["Authorization"] = "Bearer ${KeepuserInfromation.auth_token}";
      Response response;
      response = await dio.post(Services.vendorFileUpload + KeepuserInfromation.captain_id, queryParameters: {
        'nid_front' : MultipartFile.fromFile(nid_front_imageFile.value, filename: nid_front_imageFileName.value),
        'nid_back' : MultipartFile.fromFile(nid_front_imageFile.value, filename: nid_front_imageFileName.value)
      });

      if(response.statusCode == 200){
        responseCode = response.statusCode!;
      }
    }catch (e) {
      print("Error find in http file  ${e.toString()}");
    }

    return responseCode;
  }
}
