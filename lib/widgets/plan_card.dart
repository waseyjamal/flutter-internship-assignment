import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: isSelected ? 8 : 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.04),
          side: BorderSide(
            color: isSelected ? Colors.deepPurple : Colors.grey.shade300,
            width: isSelected ? 2.5 : 1.5,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: screenWidth * 0.057,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenWidth * 0.02),
              Text(
                price,
                style: TextStyle(
                  fontSize: screenWidth * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: screenWidth * 0.03),
              ...features.map((f) => Padding(
                    padding: EdgeInsets.only(bottom: screenWidth * 0.015),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle,
                            color: Colors.green, size: screenWidth * 0.04),
                        SizedBox(width: screenWidth * 0.02),
                        Expanded(
                          child: Text(
                            f,
                            style: TextStyle(fontSize: screenWidth * 0.038),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}