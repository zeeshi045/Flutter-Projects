import 'package:flutter/material.dart';
class RepeatContainerCode extends StatelessWidget {
  final Color colors;
  final Widget card;
  final void Function()? onPressed;
  const RepeatContainerCode(
      {super.key,
        required this.colors, required this.card, required this.onPressed
      });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child:card,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
  }
}