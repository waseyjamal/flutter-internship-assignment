import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subscription/controllers/upgrade_controller.dart';
import '../controllers/subscription_controller.dart';
import '../widgets/plan_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SubscriptionController());
    final upgradecontroller = Get.put(UpgradeController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    
    final buttonFontSize = screenWidth * 0.04;
    final buttonPadding = EdgeInsets.symmetric(
      vertical: screenHeight * 0.02,
      horizontal: screenWidth * 0.06,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Subscription Plans"),
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
        child: Obx(
          () => Column(
            children: [
       
              Center(
                child: Column(
                  children: [
                    Icon(Icons.workspace_premium,
                        size: screenWidth * 0.15,
                        color: Colors.amber),
                    SizedBox(height: screenHeight * 0.015),
                    Text(
                      "Choose Your Plan",
                      style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.008),
                    Text(
                      "Unlock premium features and enhance your experience",
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              PlanCard(
                title: "Monthly Plan",
                price: "\$4.99 / month",
                features: ["Unlimited Access", "No Ads", "Basic Support"],
                isSelected: controller.selectedPlan.value == 0,
                onTap: () => controller.choosePlan(0),
              ),
              SizedBox(height: screenHeight * 0.025),
              PlanCard(
                title: "Yearly Plan",
                price: "\$49.99 / year",
                features: [
                  "Unlimited Access",
                  "No Ads",
                  "Priority Support",
                  "VIP Features",
                ],
                isSelected: controller.selectedPlan.value == 1,
                onTap: () => controller.choosePlan(1),
              ),
              SizedBox(height: screenHeight * 0.025),
              PlanCard(
                title: "Lifetime Plan",
                price: "\$200",
                features: [
                  "Unlimited Access",
                  "No Ads",
                  "Priority Support",
                  "VIP Features",
                ],
                isSelected: controller.selectedPlan.value == 2,
                onTap: () => controller.choosePlan(2),
              ),

              SizedBox(height: screenHeight * 0.04),

              Obx(() => SizedBox(
                    width: screenWidth * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        upgradecontroller.upgradeNow();
                        Get.snackbar(
                          "Success 🎉",
                          "Welcome to Premium!",
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.green.shade600,
                          colorText: Colors.white,
                          margin: EdgeInsets.all(screenWidth * 0.04),
                          borderRadius: 12,
                          snackStyle: SnackStyle.FLOATING,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: upgradecontroller.isUpgraded.value
                            ? Colors.green
                            : Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: buttonPadding,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.03),
                        ),
                        elevation: 4,
                      ),
                      child: Text(
                        upgradecontroller.isUpgraded.value
                            ? "You're Upgraded! 🎉"
                            : "Continue with ${controller.selectedPlan.value == 0
                                ? "Monthly"
                                : controller.selectedPlan.value == 1
                                    ? "Yearly"
                                    : "Lifetime"} Plan",
                        style: TextStyle(
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),

              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}