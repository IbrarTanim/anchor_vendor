
import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class LicenseController extends GetxController{

  var licenseImageFile = ''.obs;
  var licenseImageFileName = ''.obs;

  //Open gallery
  licenseImageCapture() async {
    final XFile? image =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    licenseImageFile.value = image!.path;
    licenseImageFileName.value = image.name;
  }

  //upload files to server
  uploadFile() async {

    int responseCode = 0;

    try{
      Dio dio = Dio();
      dio.options.headers["Authorization"] = "Bearer ${KeepuserInfromation.auth_token}";
      Response response;
      response = await dio.post(Services.vendorFileUpload + KeepuserInfromation.captain_id, queryParameters: {
        'license' : MultipartFile.fromFile(licenseImageFile.value, filename: licenseImageFileName.value)
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