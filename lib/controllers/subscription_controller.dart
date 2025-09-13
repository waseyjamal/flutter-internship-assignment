import 'package:get/get.dart';

class SubscriptionController extends GetxController {
  var selectedPlan = 0.obs; 

  void choosePlan(int index) {
    selectedPlan.value = index;
  }
}
