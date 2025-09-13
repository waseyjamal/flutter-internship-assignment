import 'package:get/get.dart';

class UpgradeController extends GetxController {
  var isUpgraded = false.obs;

  void upgradeNow() {
    isUpgraded.value = true;
  }
}
