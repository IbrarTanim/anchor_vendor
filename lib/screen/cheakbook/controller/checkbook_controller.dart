import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';

class ChequeBookController extends GetxController {
  var chequeImageFile = ''.obs;
  var chequeImageFileName = ''.obs;

  //Open gallery
  chequeImageCapture() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    chequeImageFile.value = image!.path;
    chequeImageFileName.value = image.name;
  }

  //upload files to server
  uploadFile() async {
    int responseCode = 0;

    try {
      Dio dio = Dio();
      //dio.options.headers["Authorization"] = "Bearer ${KeepuserInfromation.auth_token}";
      Response response;
      var formData = FormData.fromMap({
        'license': MultipartFile.fromFile(chequeImageFile.value,
            filename: chequeImageFileName.value,
            contentType: MediaType('image', 'png'))
      });
      response = await dio.post(
          Services.vendorFileUpload + KeepuserInfromation.captain_id,
          data: formData,
          options: Options(headers: {
            "accept": "*/*",
            "Authorization": "Bearer ${KeepuserInfromation.auth_token}",
            "Content-Type": "multipart/form-data"
          }));

      if (response.statusCode == 200) {
        responseCode = response.statusCode!;
      }
    } catch (e) {
      print("Error find in http file  ${e.toString()}");
    }

    return responseCode;
  }
}
