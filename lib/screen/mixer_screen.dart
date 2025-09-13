import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/mixer_controller.dart';
import '../widgets/mixer_slider.dart';

class MixerScreen extends StatelessWidget {
  const MixerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MixerController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    final buttonFontSize = screenWidth * 0.04;
    final buttonPadding = EdgeInsets.symmetric(
      vertical: screenHeight * 0.015,
      horizontal: screenWidth * 0.05,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Mixer"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenHeight * 0.02,
        ),
        child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Center(
                  child: Column(
                    children: [
                      Icon(Icons.graphic_eq, 
                          size: screenWidth * 0.12, 
                          color: Colors.deepPurple),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        "Audio Controls",
                        style: TextStyle(
                          fontSize: screenWidth * 0.065,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "Adjust your sound settings",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),

               
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(screenWidth * 0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, screenHeight * 0.005),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  child: Column(
                    children: [
                      MixerSlider(
                        label: "Bass",
                        value: controller.bass.value,
                        onChanged: controller.updateBass,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      MixerSlider(
                        label: "Treble",
                        value: controller.treble.value,
                        onChanged: controller.updateTreble,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      MixerSlider(
                        label: "Volume",
                        value: controller.volume.value,
                        onChanged: controller.updateVolume,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: controller.reset,
                        icon: Icon(Icons.refresh, 
                                 size: buttonFontSize * 1.2),
                        label: Text(
                          "Reset",
                          style: TextStyle(fontSize: buttonFontSize),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade600,
                          foregroundColor: Colors.white,
                          padding: buttonPadding,
                          shape: RoundedRectangleBorder(
                            borderRadius: 
                                BorderRadius.circular(screenWidth * 0.03),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                         
                        },
                        icon: Icon(Icons.workspace_premium, 
                                 size: buttonFontSize * 1.2),
                        label: Text(
                          "Go VIP",
                          style: TextStyle(fontSize: buttonFontSize),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber.shade700,
                          foregroundColor: Colors.white,
                          padding: buttonPadding,
                          shape: RoundedRectangleBorder(
                            borderRadius: 
                                BorderRadius.circular(screenWidth * 0.03),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),
              ],
            )),
      ),
    );
  }
}