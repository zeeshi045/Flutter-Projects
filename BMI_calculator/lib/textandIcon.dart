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
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}