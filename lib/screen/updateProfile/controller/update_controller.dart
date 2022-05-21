import 'package:anchor_vendor/Model/keepUserInformation.dart';
import 'package:anchor_vendor/Services/Services.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';

class UpdateController extends GetxController {
  //profile variables
  var profile_imageFile = ''.obs;
  var profile_imageFile_name = ''.obs;

  //check if image taken
  RxBool isProfileTaken = false.obs;

  markProfileTaken() {
    isProfileTaken.value = true;
  }

  //Open gallery
  profilePickFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    profile_imageFile.value = image!.path;
    profile_imageFile_name.value = image.name;
    if (profile_imageFile.value != null || profile_imageFile.value.isNotEmpty) {
      markProfileTaken();
    }
  }

  //nid front variables
  var nid_front_imageFile = ''.obs;
  var nid_front_imageFile_name = ''.obs;

  //check if image taken
  RxBool isNIDFrontTaken = false.obs;

  markNIDFrontTaken() {
    isNIDFrontTaken.value = true;
  }

  //Open gallery
  nidFrontPickFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    nid_front_imageFile.value = image!.path;
    nid_front_imageFile_name.value = image.name;
    if (nid_front_imageFile.value != null ||
        nid_front_imageFile.value.isNotEmpty) {
      markNIDFrontTaken();
    }
  }

  //nid back variables
  var nid_back_imageFile = ''.obs;
  var nid_back_imageFile_name = ''.obs;

  //check if image taken
  RxBool isNIDBackTaken = false.obs;

  markNIDBackTaken() {
    isNIDBackTaken.value = true;
  }

  //Open gallery
  nidBackPickFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    nid_back_imageFile.value = image!.path;
    nid_back_imageFile_name.value = image.name;
    if (nid_back_imageFile.value != null ||
        nid_back_imageFile.value.isNotEmpty) {
      markNIDBackTaken();
    }
  }

  //license variables
  var license_imageFile = ''.obs;
  var license_imageFile_name = ''.obs;

  //check if image taken
  RxBool isLicenseTaken = false.obs;

  markLicenseTaken() {
    isLicenseTaken.value = true;
  }

  //Open gallery
  licenseFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    license_imageFile.value = image!.path;
    license_imageFile_name.value = image.name;
    if (license_imageFile.value != null || license_imageFile.value.isNotEmpty) {
      markLicenseTaken();
    }
  }

  //cheque variables
  var cheque_imageFile = ''.obs;
  var cheque_imageFile_name = ''.obs;

  //check if image taken
  RxBool isChequeTaken = false.obs;

  markChequeTaken() {
    isChequeTaken.value = true;
  }

  //Open gallery
  chequeFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    cheque_imageFile.value = image!.path;
    cheque_imageFile_name.value = image.name;
    if (cheque_imageFile.value != null || cheque_imageFile.value.isNotEmpty) {
      markChequeTaken();
    }
  }

  //update profile
  updateProfile(String name) async {
    int responseCode = 0;

    if (isProfileTaken.value ||
        isNIDFrontTaken.value ||
        isNIDBackTaken.value ||
        isLicenseTaken.value ||
        isChequeTaken.value) {
      //multipart

      try{

        Dio dio = Dio();
        Response response;

        var formData = FormData.fromMap({
          'nid_front': isNIDFrontTaken.value ? await MultipartFile.fromFile(nid_front_imageFile.value,
              filename: nid_front_imageFile_name.value,
              contentType: MediaType('image', 'png')) : '',
          'nid_back': isNIDBackTaken.value ? await MultipartFile.fromFile(nid_front_imageFile.value,
              filename: nid_back_imageFile_name.value,
              contentType: MediaType('image', 'png')) : '',
          'license': isLicenseTaken.value ? await MultipartFile.fromFile(license_imageFile.value,
              filename: license_imageFile_name.value,
              contentType: MediaType('image', 'png')) : '',
          'cheque': isChequeTaken.value ? await MultipartFile.fromFile(cheque_imageFile.value,
              filename: cheque_imageFile_name.value,
              contentType: MediaType('image', 'png')) : '',
          'image': isProfileTaken.value ? await MultipartFile.fromFile(profile_imageFile.value,
              filename: profile_imageFile_name.value,
              contentType: MediaType('image', 'png')) : '',
          'name' : name
        });

        response = await dio.post(
            Services.vendorUploadProfile + KeepuserInfromation.captain_id,
            data: formData,
            options: Options(headers: {
              "accept": "*/*",
              "Authorization": "Bearer ${KeepuserInfromation.auth_token}",
              "Content-Type": "multipart/form-data"
            }));

        if (response.statusCode == 200) {
          responseCode = response.statusCode!;
        }

      }catch (e) {
        print("Error find in http file  ${e.toString()}");
      }

    } else {}

    return responseCode;
  }
}
