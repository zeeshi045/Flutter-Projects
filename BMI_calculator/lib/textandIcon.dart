import 'package:bml_calculator/constant.dart';
import 'package:flutter/material.dart';
class RepeatTextandIcon extends StatelessWidget {
  RepeatTextandIcon({required this.label,required this.icon});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Icon(
          icon,
          size:70,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style:kstyle,
        ),
      ],
    );
  }
}