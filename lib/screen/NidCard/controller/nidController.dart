// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class NidController extends GetxController {
  RxBool operation = true.obs;
  changeOperation() {
    operation.value = !operation.value;
  }

  var nid_front_imageFile = ''.obs;
  //Open gallery
  Nid_front_pickImageFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    nid_front_imageFile.value = image!.path;
  }

  var nid_back_imageFile = ''.obs;
  //Open gallery
  Nid_back_pickImageFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    nid_back_imageFile.value = image!.path;
  }
}
