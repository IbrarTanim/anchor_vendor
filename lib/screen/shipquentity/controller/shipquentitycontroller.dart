import 'package:get/get.dart';

class ShipController extends GetxController {
  RxInt shipone = 1.obs;
  RxInt shiptwo = 1.obs;
  RxInt shipthree = 1.obs;
  RxInt shipfive = 1.obs;
  RxInt shipfour = 1.obs;
  shiponechange(String value) {
    if ('-' == value && shipone.value > 0) {
      shipone.value = shipone.value - 1;
    } else if ('+' == value && shipone.value >= 0) {
      shipone.value = shipone.value + 1;
    }
  }

  shiptwochange(String value) {
    if ('-' == value && shiptwo.value > 0) {
      shiptwo.value = shiptwo.value - 1;
    } else if ('+' == value && shiptwo.value >= 0) {
      shiptwo.value = shiptwo.value + 1;
    }
  }

  shipthreechange(String value) {
    if ('-' == value && shipthree.value > 0) {
      shipthree.value = shipthree.value - 1;
    } else if ('+' == value && shipthree.value >= 0) {
      shipthree.value = shipthree.value + 1;
    }
  }

  shipfourchange(String value) {
    if ('-' == value && shipfour > 0) {
      shipfour.value = shipfour.value - 1;
    } else if ('+' == value && shipfour.value >= 0) {
      shipfour.value = shipfour.value + 1;
    }
  }

  shipfivechange(String value) {
    if ('-' == value && shipfive.value > 0) {
      shipfive.value = shipfive.value - 1;
    } else if ('+' == value && shipfive.value >= 0) {
      shipfive.value = shipfive.value + 1;
    }
  }
}
