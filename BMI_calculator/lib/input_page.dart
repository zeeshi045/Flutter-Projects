import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI_calculator'),
      ),
      body:Column(
        children:[
        Expanded(child: Row(
          children: [
            Expanded(
          child:RepeatContainerCode(colors:Colors.cyan,
          ),
    ),
            Expanded(child:RepeatContainerCode(
              colors:Colors.red,
            ),
            ),
          ],
        ),

        ),
          Expanded(child:RepeatContainerCode(
            colors:Colors.orangeAccent,
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child:RepeatContainerCode(
                colors:Colors.amber,
              ),),
              Expanded(child:RepeatContainerCode(
                colors:Colors.cyan,
              ),),
            ],
          ),

          ),
        ],
      ),

    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  final Color colors;
  const RepeatContainerCode(
  {super.key,
    required this.colors
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}