import 'package:flutter/material.dart';

class MixerSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const MixerSlider({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        Slider(
          value: value,
          min: 0,
          max: 100,
          divisions: 100,
          activeColor: Colors.deepPurple,
          label: "${value.toInt()}",
          onChanged: onChanged,
        ),
      ],
    );
  }
}
