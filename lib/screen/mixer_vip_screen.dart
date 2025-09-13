import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/mixer_vip_controller.dart';
import '../widgets/mixer_slider.dart';

class MixerVipScreen extends StatelessWidget {
  const MixerVipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MixerVipController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    
    final iconSize = screenWidth * 0.1;
    final titleFontSize = screenWidth * 0.06;
    final subtitleFontSize = screenWidth * 0.04;
    final sectionFontSize = screenWidth * 0.045;
    final buttonFontSize = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: const Text("VIP Mixer 👑"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Obx(() => SingleChildScrollView( 
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Center(
                  child: Column(
                    children: [
                      Icon(Icons.star, size: iconSize, color: Colors.amber),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        "VIP Sound Controls",
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "Unlock premium audio experience",
                        style: TextStyle(
                          fontSize: subtitleFontSize,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),

                
                Text(
                  "Free Controls:",
                  style: TextStyle(
                    fontSize: sectionFontSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                MixerSlider(
                  label: "Bass",
                  value: controller.bass.value,
                  onChanged: controller.updateBass,
                ),
                SizedBox(height: screenHeight * 0.025),
                MixerSlider(
                  label: "Treble",
                  value: controller.treble.value,
                  onChanged: controller.updateTreble,
                ),

                SizedBox(height: screenHeight * 0.04),

               
                Text(
                  "VIP Controls:",
                  style: TextStyle(
                    fontSize: sectionFontSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Opacity(
                    opacity: 0.6,
                    child: IgnorePointer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Surround Sound",
                                style: TextStyle(
                                  fontSize: sectionFontSize,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Icon(Icons.lock, 
                                  size: sectionFontSize, color: Colors.grey),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          MixerSlider(
                            label: "",
                            value: controller.surround.value,
                            onChanged: (_) {},
                          ),
                          Text(
                            "VIP Feature - Upgrade to unlock",
                            style: TextStyle(
                              fontSize: subtitleFontSize * 0.8,
                              color: Colors.grey.shade600,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.04), 

               
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade700,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.06,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.1),
                      ),
                      elevation: 3,
                    ),
                    icon: Icon(Icons.workspace_premium, 
                              size: buttonFontSize * 1.2),
                    label: Text(
                      "Upgrade to Unlock VIP Features",
                      style: TextStyle(
                        fontSize: buttonFontSize,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                
                SizedBox(height: screenHeight * 0.03),
              ],
            ),
          )),
    );
  }
}