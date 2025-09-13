import 'package:get/get.dart';

class MixerController extends GetxController {
  
  var bass = 50.0.obs;
  var treble = 50.0.obs;
  var volume = 50.0.obs;

  
  void updateBass(double value) => bass.value = value;
  void updateTreble(double value) => treble.value = value;
  void updateVolume(double value) => volume.value = value;

  
  void reset() {
    bass.value = 50;
    treble.value = 50;
    volume.value = 50;
  }
}
