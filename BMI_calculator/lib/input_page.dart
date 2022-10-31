import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bml_calculator/Container.dart';
import 'package:bml_calculator/textandIcon.dart';
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
            card: RepeatTextandIcon(
              icon: FontAwesomeIcons.person,
              label: 'Male',
            ),
          ),
    ),
            Expanded(child:RepeatContainerCode(
              colors:Colors.red,
              card: RepeatTextandIcon(
                icon: FontAwesomeIcons.personDress,
                label: 'Female',
              ),
            ),
            ),
          ],
        ),

        ),
          Expanded(child:RepeatContainerCode(
            colors:Colors.orangeAccent,
            card: RepeatTextandIcon(
              icon: FontAwesomeIcons.person,
              label: 'Male',
            ),
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child:RepeatContainerCode(
                colors:Colors.amber,
                card: RepeatTextandIcon(
                  icon: FontAwesomeIcons.person,
                  label: 'Male',
                ),
              ),),
              Expanded(child:RepeatContainerCode(
                colors:Colors.cyan,
                card: RepeatTextandIcon(
                  icon: FontAwesomeIcons.person,
                  label: 'Male',
                ),
              ),),
            ],
          ),

          ),
        ],
      ),

    );
  }
}

