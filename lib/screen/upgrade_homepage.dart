import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/upgrade_controller.dart';
import '../widgets/benefit_tile.dart';

class UpgradeHomepage extends StatelessWidget {
  const UpgradeHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpgradeController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Go Premium"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: screenHeight * 0.235,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.workspace_premium,
                        size: screenWidth * 0.1,
                        color: Colors.white,
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      Text(
                        "Go Premium Now",
                        style: TextStyle(
                          fontSize: screenWidth * 0.065,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.006),
                      Text(
                        "Unlock all exclusive features",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    "Premium Benefits:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    children: [
                      const BenefitTile(text: "No Ads"),
                      const Divider(height: 1, thickness: 0.5),
                      const BenefitTile(text: "Unlimited Access"),
                      const Divider(height: 1, thickness: 0.5),
                      const BenefitTile(text: "VIP Mixer Features"),
                      const Divider(height: 1, thickness: 0.5),
                      const BenefitTile(text: "Priority Support"),
                      const Divider(height: 1, thickness: 0.5),
                      const BenefitTile(text: "Future Updates Free"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.045),

              SizedBox(
                width: screenWidth * 0.85,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.isUpgraded.value
                            ? Colors.green
                            : Colors.amber.shade700,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                      horizontal: screenWidth * 0.08,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.1),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    controller.isUpgraded.value
                        ? "You're Upgraded! 🎉"
                        : "Upgrade Now",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.012),

              if (!controller.isUpgraded.value)
                Text(
                  "Cancel anytime • 7-day trial available",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.03,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
