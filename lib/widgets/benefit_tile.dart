import 'package:flutter/material.dart';

class BenefitTile extends StatelessWidget {
  final String text;
  final IconData? icon; // Make icon customizable
  final Color? iconColor; // Make icon color customizable

  const BenefitTile({
    super.key,
    required this.text,
    this.icon = Icons.check_circle_outline, // A different, common icon
    this.iconColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true, // Makes the tile a bit more compact
      visualDensity: const VisualDensity(vertical: -2),
      leading: Icon(icon, color: iconColor),
      title: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class BenefitTile extends StatelessWidget {
//   final String text;

//   const BenefitTile({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: const Icon(Icons.check_circle, color: Colors.green),
//       title: Text(
//         text,
//         style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }
