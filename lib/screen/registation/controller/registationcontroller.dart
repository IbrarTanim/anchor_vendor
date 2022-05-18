// ignore_for_file: unused_local_variable

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegistationController extends GetxController {
  var imageFile = ''.obs;
  //Open gallery
  pickImageFromGallery() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    imageFile.value = image!.path;
  }
}
