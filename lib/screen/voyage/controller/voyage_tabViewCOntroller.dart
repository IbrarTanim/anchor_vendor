// ignore_for_file: file_names

import 'package:get/state_manager.dart';

class VoyageController extends GetxController {
  RxBool tabview = false.obs;
  chaneTabview() {
    tabview.value = !tabview.value;
  }
}
