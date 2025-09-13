import 'package:get/get.dart';

class MixerVipController extends GetxController {
  var bass = 70.0.obs;
  var treble = 60.0.obs;
  var surround = 40.0
      .obs; 

  void updateBass(double value) => bass.value = value;
  void updateTreble(double value) => treble.value = value;
}
